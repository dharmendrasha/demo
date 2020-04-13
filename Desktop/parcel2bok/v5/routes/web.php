<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Auth::routes();
Route::get('/', 'rootController@index')->name('index');

Route::post('/dynamic','rootController@dynamicFunction')->name('dynam');



Route::get('/home', 'HomeController@index')->name('home');

//parcel and pallet book
Route::post('/parcelBook', 'parcelBook@store')->name('parcelBookPost');

//pallet Book
Route::post('/palletBook', 'palletBook@store')->name('palletBookPost');
//parcelBookingStatusControler
Route::get('/awbStatuscheck/{status}/{awb}', 'parcelBookStepsController@new')->name('awbStatusCheck');

//updating the offer
Route::get('/awbStatus/{status}/{awb}/{selectedOffer}', 'parcelBookStepsController@update')->name('statusUpdate');
//updated status edit
Route::get('/awbStatus/{status}/{awb}', 'parcelBookStepsController@edit')->name('statusEdit');
//basicPlan
Route::get('/basicPlan/{awb}', 'chooseOffer@index')->name('basicPlan');
//track awb
Route::post('/awbTrack', 'parcelBookStepsController@track')->name('awbTrack');

//userinfo
Route::get('/userbasicInfo/{awb}', 'userInfoController@index')->name('userInfo');

Route::post('/userbasicInfoSave/{awb}', 'userInfoController@store')->name('userInfoSave');

//userContactInfo
Route::get('/userContact/{status}/{awb}', 'userContactInfoController@index')->name('userContact');
//userContactSave
Route::post('/userContactSave/{status}/{awb}', 'userContactInfoController@store')->name('userContactSave');

Route::get('/userExtraRegistration/{awb}', 'extraRegistrationController@create')->name('extraRegistration');

//multiple quantity
Route::get('/bookmultipleParcel', 'multipleParcelBook@index')->name('parcelPost');
//saving the multiple data
Route::post('/bookmultipleparceldatafetch', 'multipleParcelBook@store')->name('parcelPostStore');

//user step update for multiple parcels
Route::get('/parcelStepUpdateForMultipleParcels/{step}/{awb}/{multiple}', 'parcelBookStepsController@index')->name('multipleParcelSteps');
//payment cancel
Route::get('/paymentFailed', function(){
    echo "the payment is failed";
});

//paymentgatewayredirectpaypal
Route::get('/paymentRedirect', 'paypalGateway@paymentPaypalSuccess')->name('PaypalPaymentSuccess');
Route::post('/paymentReqpaypal', 'paypalGateway@payWithpaypal')->name('paypalRea');


//
Route::get('/2CheckoutRedirect', 'twoCheckoutApi@paymentCreate')->name('twoCheckout');

//get the profile
route::get('/user/Profile','HomeController@profile')->name('profile');
route::get('/user/BookedParcel','HomeController@parcelList')->name('theListOfParcels');

//return parcel address
Route::get('/oldparcelAddress/{awb}', 'returnParelController@oldParcelReceivedAddress')->name('oldParcelAddress');
Route::get('/newparcelAddress/{awb}', 'returnParelController@newParcelAddress')->name('newParcelAddress');



//pdf generate

//client
Route::get('/pdfGenerate/{awb}','returnParelController@clientSidePdfGenerate')->name('pdfGenerate');

//parcel detail
Route::get('/user/ParcelDetail/{awb}','HomeController@parcelDetail')->name('parcelDetail');

//cancel parcel
Route::get('/user/cancel/{awb}','HomeController@cancelparcel')->name('cancelparcelUser');

//enable parcel
Route::get('/user/enable/{awb}','HomeController@enableParcel')->name('enableparcel');
//end


