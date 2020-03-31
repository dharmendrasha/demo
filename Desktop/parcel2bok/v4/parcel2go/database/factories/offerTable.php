<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\offerTableModel;
use Faker\Generator as Faker;

$factory->define(offerTableModel::class, function (Faker $faker) {
    return [
        'companyName' => $faker->name,
        'companyLogo' => $faker->imageUrl($width = 640, $height = 480),
        'valeWithProtection' => $faker->buildingNumber,
        'valueWithoutProtection' => $faker->buildingNumber,
        'areaCoverArray' => "[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]"
    ];
});
