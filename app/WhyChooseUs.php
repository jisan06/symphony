<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WhyChooseUs extends Model
{	protected $table = 'why_choose_us';

	protected $fillable = [
        'title1','title2','image','description','orderBy','status'
    ];

    protected $hidden = [
        'created_at', 'updated_at',
    ];
}
