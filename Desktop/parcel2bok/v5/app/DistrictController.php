<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DistrictController extends Model
{
    protected $table = 'districtList';
    protected $fillable = ['country','state','district'];
}
