<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class OtherInformation extends Authenticatable
{
    protected $table = 'other_information';
    protected $fillable = [
        'homeLogo','homeFavIcon','categoryCoverImage','categoryImage','sliderImage','teamMemberImage','testimonialImage','partnerImage','articleHomeImage','articleInnerImage','adminMainLogo', 'adminSmallLogo', 'adminFavIcon'
    ];

    protected $hidden = [
        'created_at', 'updated_at',
    ];


}
