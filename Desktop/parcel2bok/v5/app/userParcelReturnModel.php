<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class userParcelReturnModel extends Model
{
    protected $table = 'userParcelReturn';
    protected $fillable = ['userId','awb','addressOne','addressTwo','district','state','country','pin','approvedByAdmin'];
}
