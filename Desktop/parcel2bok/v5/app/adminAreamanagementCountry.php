<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class adminAreamanagementCountry extends Model
{
    protected $table = 'operationalAreas';
    protected $fillable =  ['country','flag','state','district','pin'];
}
