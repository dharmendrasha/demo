<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {
    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->get('listAllUser', 'AdminTotalUserController@detail')->name('admin.listAllUser');
    //single parcel list user
    $router->get('/listAllUser/singleParcel', 'AdminTotalUserController@singleParcel')->name('admin.listAllUser.singleParcel');
    //Multiple parcel list user
    $router->get('/listAllUser/multipleParcel', 'AdminTotalUserController@multipleParcel')->name('admin.listAllUser.multipleParcel');

    //delete the user
    $router->get('/listAllUser/delete/{awb}', 'AdminTotalUserController@delete')->name('admin.listAllUser.delete');

    //details about the user
    $router->get('/listAllUser/detail/{awb}', 'AdminTotalUserController@detailuser')->name('admin.listAllUser.detail');

    //update the delivery status
    $router->get('/listAllUser/deliver/{awb}', 'AdminTotalUserController@delivery')->name('admin.listAllUser.deliver');
        //updating the user through the post request method
        $router->post('/listAllUser/deliver/post/{awb}','AdminTotalUserController@deliveryPost')->name('admin.listAllUser.deliverPost');

    $router->get('/listAllUser/updated/parcelStatus', 'AdminTotalUserController@updatedParcelStaus')->name('admin.listAllUser.updatedStatus');
        //update the status
        $router->get('/listAllUser/updated/parcelStatus/update/{id}','AdminTotalUserController@updatedParcelStatusPost')->name('admin.listAllUser.updateStatusPost');
            //update the form status form
            $router->post('/listAllUser/updated/parcelStatus/updateIt/{id}','AdminTotalUserController@updatedParcelstatusPostMethod')->name('admin.listAllUser.updateStatusPostMethod');


    //status remove it
    $router->get('/listAllUser/updated/delete/{id}','AdminTotalUserController@deleteStatus')->name('admin.listAllUser.status.delete');
});
