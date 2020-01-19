<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AboutCompany extends Model
{	protected $table = 'about_company';

	protected $fillable = [
        'title1','title2','image','description','orderBy','status'
    ];

    protected $hidden = [
        'created_at', 'updated_at',
    ];
}
