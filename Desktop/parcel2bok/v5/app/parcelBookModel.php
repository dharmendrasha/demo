<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class parcelBookModel extends Model
{
    protected $table = 'parcelBook';
    protected $fillable = ['parcelFrom','parcelFromPincode', 'parcelTo', 'parcelToPincode', 'parcelWeight', 'awbNumber'];
}
