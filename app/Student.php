<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    //

    public function t__class(){
    	return $this->belongsTo('App\T_Class');
    }
}
