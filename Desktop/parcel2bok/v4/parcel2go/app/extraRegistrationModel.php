<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class extraRegistrationModel extends Model
{
    protected $table = 'users';
    protected $fillable = ['uniqNum','name','mobile','email','username','email_varified_at','password'];
}
