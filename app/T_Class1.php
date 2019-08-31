<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class T_Class extends Model
{
    protected $table = "t__classes";
    //primary key
    public $primaryKey = "id";
    //timestamps
    public $timestamps = true;
}
