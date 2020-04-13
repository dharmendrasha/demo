<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\userParcelReturnModel;
use PDF;
use App\userInfoModel;

use DB;

class returnParelController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function oldParcelReceivedAddress($awb){
        //the user
        $id = \Auth::user()->id;

        //get the old parcel address

        $getOlddata = DB::table('userPickUPandDrop')->where('awb',$awb)->get();
        $parcel = $getOlddata[0];
        //save the data into database

        $saveReturnAddress = new userParcelReturnModel([
            'userId' => $id,
            'awb' => $awb,
            'addressOne' => $parcel->pickUpaddressOne,
            'addressTwo' => $parcel->pickUpAddresstwo.', City: '.$parcel->pickUpCity,
            'district' => $parcel->pickupDistict,
            'state' => $parcel->pickUpState,
            'country' => $parcel->pickUpCountry,
            'pin' => $parcel->pickUpPin,
            'approvedByAdmin'=>'N'
        ]);

        $saveReturnAddress->save();
        flash('Return parcel address has been saved')->success();
        return \redirect()->back();
    }
    public function newParcelAddress($awb){
        //the user
        $id = \Auth::user()->id;
        echo "new Address";
    }



    public function clientSidePdfGenerate($awb){
        PDF::setOptions(['dpi' => 150, 'defaultFont' => 'sans-serif']);
        $data = ['title' => 'Welcome to ItSolutionStuff.com'];
        $pdf = PDF::loadView('pdf/client', $data);

        return $pdf->download('receipt_'.$awb.'.pdf');
    }

}
