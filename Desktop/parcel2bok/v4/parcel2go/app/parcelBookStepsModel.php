<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class parcelBookStepsModel extends Model
{
    protected $table = 'userSteps';
    protected $fillable = ['userId', 'awbNumber', 'totalSteps', 'stepsComplete', 'isMultipleParcel'];
}
