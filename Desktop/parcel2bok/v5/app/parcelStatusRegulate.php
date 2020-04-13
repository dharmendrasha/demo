<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class parcelStatusRegulate extends Model
{
    protected $table  = 'parcelStatusRegulate';
    protected $fillable = ['awb','from','to','message','By','userType'];
}
