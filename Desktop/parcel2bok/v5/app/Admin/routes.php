<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix' => config('admin.route.prefix'),
    'namespace' => config('admin.route.namespace'),
    'middleware' => config('admin.route.middleware'),
], function (Router $router) {
    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->get('/infoBasic', 'HomeController@newIndex')->name('admin.home.new');
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
    $router->post('/listAllUser/deliver/post/{awb}', 'AdminTotalUserController@deliveryPost')->name('admin.listAllUser.deliverPost');

    $router->get('/listAllUser/updated/parcelStatus', 'AdminTotalUserController@updatedParcelStaus')->name('admin.listAllUser.updatedStatus');
    //update the status
    $router->get('/listAllUser/updated/parcelStatus/update/{id}', 'AdminTotalUserController@updatedParcelStatusPost')->name('admin.listAllUser.updateStatusPost');
    //update the form status form
    $router->post('/listAllUser/updated/parcelStatus/updateIt/{id}', 'AdminTotalUserController@updatedParcelstatusPostMethod')->name('admin.listAllUser.updateStatusPostMethod');

    //status remove it
    $router->get('/listAllUser/updated/delete/{id}', 'AdminTotalUserController@deleteStatus')->name('admin.listAllUser.status.delete');

    //area management
    $router->get('/area', 'countriesStatesDistrictsForAdminCtrl@index')->name('admin.area.options');

    //adding new parcel
    $router->get('/area/parcelNew', 'countriesStatesDistrictsForAdminCtrl@addNewParcelCompany')->name('admin.parcel.new');
    //posting and validating the data
    $router->post('/area/parcelNewPost', 'countriesStatesDistrictsForAdminCtrl@addNewParcelCompanyPost')->name('admin.parcel.newPost');
    $router->get('/area/parcelShow', 'countriesStatesDistrictsForAdminCtrl@showCarrier')->name('admin.parcel.show');
    $router->get('/area/parcel/remove/{id}', 'countriesStatesDistrictsForAdminCtrl@deleteCarrier')->name('admin.parcel.delete');
    $router->get('/area/parcel/update/{id}', 'countriesStatesDistrictsForAdminCtrl@updateCarrier')->name('admin.parcel.update');
    $router->post('/area/parcel/updatePost/{id}', 'countriesStatesDistrictsForAdminCtrl@updateCarrierPost')->name('admin.parcel.update.post');

    //area management controller
    $router->get('/area/operation', 'AdminAreaMgmtCtrl@index')->name('admin.area.functions');
    $router->get('/area/operation/country/add', 'AdminAreaMgmtCtrl@addCountry')->name('admin.area.country.add');
    $router->post('/area/operation/country/insert', 'AdminAreaMgmtCtrl@insertCountry')->name('admin.area.country.insert');

    //state
    $router->get('/area/operation/country/state/add', 'AdminAreaMgmtCtrl@insertState')->name('admin.area.state.add');
    $router->post('/area/operation/country/state/post', 'AdminAreaMgmtCtrl@insertStatePost')->name('admin.area.state.post');
    $router->post('/area/operation/country/state/post/dbl', 'AdminAreaMgmtCtrl@insertStatePostDbl')->name('admin.area.state.post.dbl');

    //district
    $router->get('/area/operation/country/state/district/add', 'AdminAreaMgmtCtrl@insertDistrict')->name('admin.area.district.add');
    //get states custom

    $router->post('/dynamicFetch', 'AdminAreaMgmtCtrl@dynamicFetch')->name('admin.dynamic.states');

    //confirminf the data
    $router->post('/area/operation/country/state/district/add/post', 'AdminAreaMgmtCtrl@confrimDistrict')->name('admin.dynamic.states.conf');

    //confirm dbl confirm
    $router->post('/area/operation/country/state/district/add/post.conf', 'AdminAreaMgmtCtrl@districtDblConf')->name('admin.district.post.conf');

    //pincode
    $router->get('/area/operation/country/state/district/pincode/add', 'AdminAreaMgmtCtrl@pincodeInsert')->name('admin.area.pin.add');

    //
    $router->post('/area/operation/country/state/district/pincode/post', 'AdminAreaMgmtCtrl@pincodePost')->name('admin.area.pin.cnf');

    $router->post('/area/operation/country/state/district/pincode/post/save', 'AdminAreaMgmtCtrl@pincodeSave')->name('admin.area.pin.save');

//area maanage
    $router->get('/manage/locations/updateButton', 'AdminAreaMgmtCtrl@areaControllerManage')->name('admin.area.manage');
//country crud
    $router->get('/manage/locations/country', 'AdminAreaMgmtCtrl@crudCountry')->name('admin.crud.country');
    $router->get('/manage/locations/country/delete/{id}', 'AdminAreaMgmtCtrl@countryDelete')->name('admin.crud.country.del');
    $router->get('/manage/locations/country/edit/{id}', 'AdminAreaMgmtCtrl@countryEdit')->name('admin.crud.country.edit');
    $router->post('/manage/locations/country/edit/post/{id}', 'AdminAreaMgmtCtrl@countryEditPost')->name('admin.crud.country.edit.post');

//state list
    $router->get('/manage/locations/{country}/list', 'AdminAreaMgmtCtrl@crudState')->name('admin.crud.state');
//remove
    $router->get('/manange/location/{country}/{state}/remove', 'AdminAreaMgmtCtrl@crudStateRem')->name('admin.crud.state.del');
//edit the stata
    $router->post('/manage/locations/{country}/{state}/edit', 'AdminAreaMgmtCtrl@crudStateEdit')->name('admin.crud.state.edit');

//see the distrct
    $router->get('/manage/locations/{country}/{state}/district/list', 'AdminAreaMgmtCtrl@crudDistrict')->name('admin.crud.district');
//remove district
    $router->get('/manage/locations/{country}/{state}/{district}/del', 'AdminAreaMgmtCtrl@crudDistrictRem')->name('admin.crud.district.del');
//update district
    $router->post('/manage/locations/{country}/{state}/{district}/edit', 'AdminAreaMgmtCtrl@crudDistrictDel')->name('name.crud.district.edit');

//pincode
    $router->get('/manage/locations/{country}/{state}/{district}/pin/list', 'AdminAreaMgmtCtrl@crudPincode')->name('admin.crud.pin');
//remove pincode
    $router->get('/manage/locations/{country}/{state}/{district}/{pin}/del', 'AdminAreaMgmtCtrl@crudPincodeRem')->name('admin.crud.pin.del');
//edit pin code
    $router->post('/manage/locations/{country}/{state}/{district}/{pin}/edit', 'AdminAreaMgmtCtrl@crudPincodeEdit')->name('admin.crud.pin.edit');

//carrierListControllerTotal
    $router->get('/manage/carrier/list', 'carrierListTotalController@index')->name('admin.carrier.list');

//
    $router->get('/manage/carrier/{country}/{state}/{district}/{pin}/add', 'carrierListTotalController@carrierAdd')->name('admin.carrier.add');

//join button
    $router->get('/manage/carrier/{country}/{state}/{district}/{pin}/add/to/{carrier}/{carrierName}', 'carrierListTotalController@carrierJoinTable')->name('admin.carrier.join');


    //routes

// carrier currency manager
$router->get('/manage/carrier/rate','carrierPriceManage@index')->name('admin.carrier.rate');
//select
$router->get('/manager/caarrier/rate/ByWeight/{carrierId}/{carrierName}','carrierPriceManage@byWeight')->name('admin.carrier.rate.weight');
//select and insert
$router->post('/manage/carrier/rate/{carrierId}/{carrierName}/{district}/{pin}/insert','carrierPriceManage@insert')->name('admin.carrier.rate.insert');
//see the plan
$router->get('/manage/carrier/list/all/wwithRates', 'carrierPriceManage@showListOfAll')->name('admin.carrier.rate.Show');
});
