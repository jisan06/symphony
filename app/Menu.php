<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
	protected $fillable = [
        'parent','menuName','articleName','parentArticle','firstHomeTitle','firstHomeImage', 'homeDescription', 'urlLink','menuIcon','metaTitle','metaKeyword','metaDescription','orderBy','menuStatus','showInMenu'
    ];

    protected $hidden = [
        'created_at', 'updated_at',
    ];

    public function articles()
	{
    	return $this->hasMany(Article::class);
	}

}