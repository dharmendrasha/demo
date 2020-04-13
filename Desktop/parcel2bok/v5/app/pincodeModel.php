<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pincodeModel extends Model
{
    protected $table = 'pincodeList';
    protected $fillable = ['country','state','district','pin'];
}
