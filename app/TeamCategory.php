<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TeamCategory extends Model
{
    protected $table = 'team-category';

	protected $fillable = [
        'name','orderBy','status'
    ];

    protected $hidden = [
        'created_at', 'updated_at',
    ];   
}
