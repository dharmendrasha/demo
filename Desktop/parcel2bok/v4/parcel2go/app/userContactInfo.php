<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class userContactInfo extends Model
{
    protected $table = 'userInfoContact';
    protected $fillable = ['awb','contactPhoneNumber','contactEmail','contactTimingFrom','contactTimingTo'];
}
