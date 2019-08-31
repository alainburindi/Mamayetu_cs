<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class T_Class extends Model
{
    //
    public function student()
    {
        return $this->hasMany('App\Student');
    }
    public function courses()
    {
        return $this->hasMany('App\Courses');
    }
}
