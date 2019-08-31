<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Courses extends Model
{
    //
    public function t_class(){
    	return $this->belongsTo('App\T_Class');
    }
}
