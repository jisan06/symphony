<?php

//admin panel start here

Auth::routes();

Route::group(['prefix' => 'admin', 'middleware' => ['web', 'auth:admin']], function () {
     Route::get('/file/laravel-filemanager', '\Unisharp\Laravelfilemanager\controllers\LfmController@show')->name('laravelFilemanager');
     
		Route::post('/file/laravel-filemanager/upload', '\Unisharp\Laravelfilemanager\controllers\UploadController@upload')->name('laravelFilemanager.upload');
 });


Route::prefix('admin')->group(function()
{
	Route::middleware('auth:admin')->group(function(){

	Route::group(['middleware'=>'menuPermission'],function(){

		//Dashboard Link url
		Route::get('/', 'HomeController@index')->name('admin.index');
		Route::get('/ff', 'HomeController@index')->name('aboutCompany.index');


		/*
			All Setings start here
		*/

		//Site Information section

		Route::get('/website-information', 'Admin\SettingsController@information')->name('site.info');
		Route::post('/update-information', 'Admin\SettingsController@updatSettings')->name('settings.update');
		Route::get('/admin-logo', 'Admin\SettingsController@adminLogo')->name('admin.logo');
		Route::post('/adminLogo-update', 'Admin\SettingsController@updatadminLogo')->name('adminLogo.update');

		//About Company
		/*Route::get('/about-company', 'Admin\AboutCompanyController@index')->name('aboutCompany.index');
		Route::match(['GET', 'POST'], '/about-company/add', 'Admin\AboutCompanyController@add')->name('aboutCompany.add');
		Route::match(['GET', 'POST'], '/about-company/edit/{id}', 'Admin\AboutCompanyController@edit')->name('aboutCompany.edit');
		Route::get('/about-company/status/{id}', 'Admin\AboutCompanyController@status')->name('aboutCompany.status');

		Route::match(['GET', 'POST'], '/about-company/delete/{id}', 'Admin\AboutCompanyController@delete')->name('aboutCompany.delete');*/

		//Why Choose Us Section
		Route::get('/choose-us', 'Admin\WhyChooseUsController@index')->name('chooseUs.index');
		Route::match(['GET', 'POST'], '/choose-us/add', 'Admin\WhyChooseUsController@add')->name('chooseUs.add');
		Route::match(['GET', 'POST'], '/choose-us/edit/{id}', 'Admin\WhyChooseUsController@edit')->name('chooseUs.edit');
		Route::get('/choose-us/status/{id}', 'Admin\WhyChooseUsController@status')->name('chooseUs.status');
		Route::match(['GET', 'POST'], '/choose-us/delete/{id}', 'Admin\WhyChooseUsController@delete')->name('chooseUs.delete');

		//Team Category Section
		Route::get('/team-category', 'Admin\TeamCategoryController@index')->name('teamCategory.index');
		Route::match(['GET', 'POST'], '/team-category/add', 'Admin\TeamCategoryController@add')->name('teamCategory.add');
		Route::match(['GET', 'POST'], '/team-category/edit/{id}', 'Admin\TeamCategoryController@edit')->name('teamCategory.edit');
		Route::get('/team-category/status/{id}', 'Admin\TeamCategoryController@status')->name('teamCategory.status');
		Route::match(['GET', 'POST'], '/team-category/delete/{id}', 'Admin\TeamCategoryController@delete')->name('teamCategory.delete');

		//Our Team Section
		Route::get('/team', 'Admin\TeamController@index')->name('team.index');
		Route::match(['GET', 'POST'], '/team/add', 'Admin\TeamController@add')->name('team.add');
		Route::match(['GET', 'POST'], '/team/edit/{id}', 'Admin\TeamController@edit')->name('team.edit');
		Route::get('/team/status/{id}', 'Admin\TeamController@status')->name('team.status');
		Route::match(['GET', 'POST'], '/team/delete/{id}', 'Admin\TeamController@delete')->name('team.delete');

		//Testimonial Section
		Route::get('/testimonial', 'Admin\TestimonialController@index')->name('testimonial.index');
		Route::match(['GET', 'POST'], '/testimonial/add', 'Admin\TestimonialController@add')->name('testimonial.add');
		Route::match(['GET', 'POST'], '/testimonial/edit/{id}', 'Admin\TestimonialController@edit')->name('testimonial.edit');
		Route::get('/testimonial/status/{id}', 'Admin\TestimonialController@status')->name('testimonial.status');
		Route::match(['GET', 'POST'], '/testimonial/delete/{id}', 'Admin\TestimonialController@delete')->name('testimonial.delete');

		//Testimonial Section
		Route::get('/partners', 'Admin\PartnerController@index')->name('partners.index');
		Route::match(['GET', 'POST'], '/partners/add', 'Admin\PartnerController@add')->name('partners.add');
		Route::match(['GET', 'POST'], '/partners/edit/{id}', 'Admin\PartnerController@edit')->name('partners.edit');
		Route::get('/partners/status/{id}', 'Admin\PartnerController@status')->name('partners.status');
		Route::match(['GET', 'POST'], '/partners/delete/{id}', 'Admin\PartnerController@delete')->name('partners.delete');

		//Article Section
		Route::get('/articles', 'Admin\ArticleController@index')->name('articles.index');
		Route::match(['GET', 'POST'], '/articles/add', 'Admin\ArticleController@add')->name('articles.add');
		Route::match(['GET', 'POST'], '/articles/edit/{id}', 'Admin\ArticleController@edit')->name('articles.edit');
		Route::get('/articles/status/{id}', 'Admin\ArticleController@status')->name('articles.status');
		Route::match(['GET', 'POST'], '/articles/delete/{id}', 'Admin\ArticleController@delete')->name('articles.delete');

		Route::post('/get-sub-article', 'Admin\ArticleController@getSubArticle')->name('getSubArticle');

		//Portfolio Section
		Route::get('/portfolio', 'Admin\PortfolioController@index')->name('portfolio.index');
		Route::match(['GET', 'POST'], '/portfolio/add', 'Admin\PortfolioController@add')->name('portfolio.add');
		Route::match(['GET', 'POST'], '/portfolio/edit/{id}', 'Admin\PortfolioController@edit')->name('portfolio.edit');
		Route::get('/portfolio/status/{id}', 'Admin\PortfolioController@status')->name('portfolio.status');
		Route::match(['GET', 'POST'], '/portfolio/delete/{id}', 'Admin\PortfolioController@delete')->name('portfolio.delete');

		//Start Menu Section
		Route::get('/menu', 'Admin\MenuController@index')->name('menu.index');
		Route::match(['GET', 'POST'], '/menu/add', 'Admin\MenuController@add')->name('menuadd.page');
		Route::match(['GET', 'POST'],'/menu/edit/{id}', 'Admin\MenuController@edit')->name('menu.edit');
		Route::get('/menu/status/{id}', 'Admin\MenuController@changeStatus')->name('menu.changeStatus');
		Route::get('/menu/delete/{id}', 'Admin\MenuController@delete')->name('menu.delete');
		Route::post('/menu/delete', 'Admin\MenuController@delete')->name('menu.destroy');


		//Sliders Section
		Route::get('/sliders', 'Admin\SliderController@index')->name('sliders.index');
		Route::match(['GET', 'POST'],'slider-add', 'Admin\SliderController@add')->name('slideradd.page');
		Route::match(['GET', 'POST'],'/slider-edit/{id}', 'Admin\SliderController@edit')->name('slider.edit');
		Route::get('/sliders/status/{id}', 'Admin\SliderController@changeStatus')->name('sliders.changeStatus');
		Route::match(['GET', 'POST'],'/slider-delete/{id}', 'Admin\SliderController@deleteSlider')->name('slider.delete');
		
		//Videos Section
		Route::get('/videos', 'Admin\VideoController@index')->name('videos.index');
		Route::get('/videos-add', 'Admin\VideoController@add')->name('videos.add');
		Route::post('/videos-add', 'Admin\VideoController@add')->name('videos.add');

		Route::get('/videos/status/{id}', 'Admin\VideoController@status')->name('videos.status');

		Route::get('/videos-edit/{id}', 'Admin\VideoController@edit')->name('videos.edit');
		Route::post('/videos-update', 'Admin\VideoController@edit')->name('videos.update');

		Route::get('/videos-delete/{id}', 'Admin\VideoController@delete')->name('videos.delete');
		Route::post('/videos-delete', 'Admin\VideoController@delete')->name('videos.destroy');

		//Social Link section
		Route::get('/social-information', 'Admin\SocialController@information')->name('social.info');
		Route::post('/update-social', 'Admin\SocialController@updatSocials')->name('socials.update');

		//Contact List
		Route::resource('contacts', 'Admin\ContactController');
		Route::get('/contact-details/{id}', 'Admin\ContactController@contactDetails')->name('contact.contactDetails');

		//Customer Review Here
		Route::resource('reviews', 'Admin\ReviewController');
		Route::get('/review-details/{id}', 'Admin\ReviewController@reviewDetails')->name('review.reviewDetails');
		Route::get('/review/status/{id}', 'Admin\ReviewController@changereviewStatus')->name('reviews.changereviewStatus');

		//Faq Manage here
		Route::resource('faqs', 'Admin\FaqController');
		Route::get('/faq-add', 'Admin\FaqController@addfaq')->name('faqadd.page');
		Route::post('/faq-save', 'Admin\FaqController@savefaq')->name('faq.save');
		Route::get('/faq/status/{id}', 'Admin\FaqController@changeStatus')->name('faqs.changeStatus');
		Route::get('/faq-edit/{id}', 'Admin\FaqController@editfaq')->name('faq.edit');
		Route::post('/faq-update', 'Admin\FaqController@updatefaq')->name('faq.update');
		Route::get('/faq-delete/{id}', 'Admin\FaqController@deletefaq')->name('faq.delete');

		//Start Blog Section
		Route::get('/blogs', 'Admin\BlogController@index')->name('blogs.index');
		Route::get('/blog-add', 'Admin\BlogController@addblog')->name('blogadd.page');

		Route::post('/blog-save', 'Admin\BlogController@saveblog')->name('blog.save');

		Route::get('/blog-edit/{id}', 'Admin\BlogController@editBlog')->name('blog.edit');

		Route::post('/blog-update/{id}', 'Admin\BlogController@updateBlog')->name('blog.update');

		Route::get('/blogs/status/{id}', 'Admin\BlogController@status')->name('blogs.status');
		Route::match(['GET', 'POST'], '/blogs/delete/{id}', 'Admin\BlogController@delete')->name('blog.delete');

		//End Blog Section

		//News letter subscribe section here
		Route::resource('subscribers', 'Admin\NewsletterController');

		//User Menu 
		/*Route::get('/company', 'Admin\CompanyController@index')->name('company.index');
		Route::get('/company/add', 'Admin\CompanyController@add')->name('company.add');
		Route::post('/company/save', 'Admin\CompanyController@save')->name('company.save');
		Route::get('/company/edit/{id}', 'Admin\CompanyController@edit')->name('company.edit');
		Route::post('/company/update', 'Admin\CompanyController@update')->name('company.update');
		Route::get('/company/status', 'Admin\CompanyController@status')->name('company.status');
		Route::post('/company-delete', 'Admin\CompanyController@destroy')->name('company.delete');*/

		//End User Menu

		//User Menu 
		Route::get('/user-menu', 'Admin\UserMenuController@index')->name('usermenu.index');
		Route::get('/user-menu/add', 'Admin\UserMenuController@add')->name('usermenu.add');
		Route::post('/user-menu/save', 'Admin\UserMenuController@save')->name('usermenu.save');
		Route::get('/user-menu/edit/{id}', 'Admin\UserMenuController@edit')->name('usermenu.edit');
		Route::post('/user-menu/update', 'Admin\UserMenuController@update')->name('usermenu.update');
		Route::get('/user-menu/status', 'Admin\UserMenuController@status')->name('usermenu.status');
		Route::post('/usermenu-delete', 'Admin\UserMenuController@destroy')->name('usermenu-delete');

		//End User Menu

		//User Menu link action
		Route::get('/user-menu-link/{id}', 'Admin\UserMenuController@usermenuLink')->name('usermenuLink.index');
		Route::get('/user-menu-link-add/{menuId}', 'Admin\UserMenuController@usermenuLinkAdd')->name('userMenu.ActionLinkAdd');
		Route::post('/user-menu-link-save/{parentMenuId}', 'Admin\UserMenuController@usermenuLinkSave')->name('userMenu.ActionLinkSave');
		Route::get('/user-menu-link-edit/{menuId}/{id}', 'Admin\UserMenuController@usermenuLinkEdit')->name('userMenu.ActionLinkEdit');
		Route::post('/user-menu-link-update/{parentMenuId}', 'Admin\UserMenuController@usermenuLinkUpdate')->name('userMenu.ActionLinkUpdate');
		Route::get('/user-menu-action/status', 'Admin\UserMenuController@actionStatus')->name('usermenuAction.status');
		Route::post('/user-menu-action/delete', 'Admin\UserMenuController@actionDestroy')->name('usermenuAction.delete');

		//User Manage

		Route::resource('users', 'Admin\AdminController');
		Route::get('/user-add', 'Admin\AdminController@adduser')->name('useradd.page');

		Route::post('/user-save', 'Admin\AdminController@saveuser')->name('user.save');

		Route::get('/user/status/{id}', 'Admin\AdminController@changeuserStatus')->name('user.changeuserStatus');

		Route::get('/user-edit/{id}', 'Admin\AdminController@edituser')->name('user.edit');

		Route::post('/user-upate', 'Admin\AdminController@updateuser')->name('user.update');
		Route::get('/user-password/{id}', 'Admin\AdminController@password')->name('user.password');

		Route::get('/user-profile/{id}', 'Admin\AdminController@userProfile')->name('user.profile');

		Route::post('/user-changePassword', 'Admin\AdminController@passwordChange')->name('user.changePassword');

		//User Roll Manage

		Route::resource('user-roles', 'Admin\UserRoleController');
		Route::get('/user-role-add', 'Admin\UserRoleController@adduserRole')->name('userRoleAdd.page');

		Route::post('/user-role-save', 'Admin\UserRoleController@saveuserRole')->name('userRole.save');

		Route::get('/userRole/status/{id}', 'Admin\UserRoleController@changeuserRoleStatus')->name('userRole.changeuserRoleStatus');

		Route::get('/user-role-edit/{id}', 'Admin\UserRoleController@edituserRole')->name('userRole.edit');

		Route::post('/user-role-upate', 'Admin\UserRoleController@updateuserRole')->name('userRole.update');
		Route::get('/user-role-permission/{id}', 'Admin\UserRoleController@permission')->name('userRole.permission');
		Route::post('/user-role-permission-update', 'Admin\UserRoleController@permissionUpdate')->name('userRole.permissionUpdate');

		//Others info that's can be image title
		Route::match(['GET', 'POST'],'/others-info', 'Admin\OtherInformationController@information')->name('others.info');

		//No Permission Page
		Route::get('/no-permission', 'Admin\AdminController@NoPermission')->name('user.noPermission');

		});
	});

	//Admin Login Url
	Route::get('/login', 'Auth\AdminLoginController@showLoginForm')->name('admin.login');
	Route::post('/login', 'Auth\AdminLoginController@login');
    Route::post('/logout', 'Auth\AdminLoginController@adminLogout')->name('admin.logout');

    // Password Reset Routes...
     Route::get('/password/reset', 'Auth\AdminForgotPasswordController@passwordForget')->name('admin.password.forget');
     Route::post('/password/email', 'Auth\AdminForgotPasswordController@passwordEmail')->name('admin.password.email');
     Route::get('/new-password/{email}', 'Auth\AdminForgotPasswordController@newPassword')->name('admin.password.newPassword');
     Route::post('/password/save', 'Auth\AdminForgotPasswordController@changePasswordSave')->name('admin.password.save');

});

//-----------------------------------------------------------------------------------//
							//Admin part end//


//frontend url start from here
Route::get('/', 'FrontendController@index')->name('home.index');

/*Url for menu*/
Route::get('/{name}/{id}', 'MenuController@MenuContent')->name('menu.content');
Route::get('/team/{name}/{id}', 'TeamController@Category')->name('team.category');

/*Show Product Details*/
Route::get('/{parentName}/{articleName}/{articleId}', 'FrontendController@ProdeuctFeatureDetails')->name('prodeuctFeature.details');

/*Show Team Details*/
Route::get('/team/{id}', 'TeamController@TeamDetails')->name('team.details');
Route::get('/portfolio/{id}', 'PortfolioController@PortfolioDetails')->name('portfolio.details');

/*Show Client Details*/
Route::get('/client/{id}', 'ClientController@ClientDetails')->name('client.details');

//Contact Message here
Route::post('/contact-save', 'ContactController@contacts')->name('contact.save');

//Blog Here
Route::get('/blog', 'FrontendController@blog');
Route::get('/blog/{id}', 'BlogController@BlogDetails')->name('blog.details');



