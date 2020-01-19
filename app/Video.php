<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{	protected $table = 'videos';

	protected $fillable = [
        'title1','title2','video_link','metaTitle','metaKeyword','metaDescription','orderBy','status'
    ];

    protected $hidden = [
        'created_at', 'updated_at',
    ];
}
