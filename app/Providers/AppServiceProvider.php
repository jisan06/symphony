<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Menu;
use App\Settings;
use App\OtherInformation;
use App\Social;
use App\Blog;
use DB;
use View;
use App\UserMenu;
use App\UserMenuActions;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        View::composer('*',function($siteInfo){
            $information = Settings::where('siteStatus',1)->first();
            $siteInfo->with('information',$information);
        });

        View::composer('*',function($socialInfo){
            $socialLink = Social::where('status',1)->first();
            $socialInfo->with('socialLink',$socialLink);
        });

        View::composer('*',function($blogList){
            $globalBlogs = Blog::where('articleStatus',1)->get();
            $blogList->with('globalBlogs',$globalBlogs);
        });

        View::composer('*',function($others){
            $othersInfo = OtherInformation::first();
            $others->with('othersInfo',$othersInfo);
        });

        //Link for Add New Button
        View::composer('*',function($addLink){
            $routeName = \Route::currentRouteName();
            $userMenus = UserMenu::where('menuLink',$routeName)->first();
            $userMenuAction = UserMenuActions::where('parentmenuId',@$userMenus->id)->where('menuType',1)->first();
            if(@$userMenuAction->actionLink){
                $actionLink = @$userMenuAction->actionLink;
            }else{
                $actionLink = 'admin.index';
            }
            $addLink->with('addNewLink',@$actionLink);
        });

        //Link for Go Back
        View::composer('*',function($backLink){
            $routeName = \Route::currentRouteName();
            $userMenuAction = UserMenuActions::where('actionLink',@$routeName)->first();
            $userMenu = UserMenu::where('id',@$userMenuAction->parentmenuId)->first();
            $backLink->with('goBackLink',@$userMenu->menuLink);
        });

         View::composer('*',function($blankImage){
            $blank = asset('/public/frontend/no-image-icon.png');
            $blankImage->with('noImage',$blank);
        });

    }

}
