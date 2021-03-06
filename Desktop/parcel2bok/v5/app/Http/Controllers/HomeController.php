<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\parcelBookStepsModel;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(){
        $allTheuserInfo = DB::table('users')->select('*')->join('userprofile', 'userprofile.awb', '=', 'users.uniqNum')->join('userinfocontact', 'userinfocontact.awb','=','users.uniqNum')->join('userpickupanddrop', 'userpickupanddrop.awb','=','users.uniqNum')->join('parcelbook', 'parcelbook.awbNumber', '=', 'users.uniqNum')->where(['users.uniqNum' => \Auth::user()->uniqNum])->get();
        if(count($allTheuserInfo) === 0){
            $allTheuserInfo = DB::table('usermultipleparcel')->select('*')->join('userprofile','userprofile.awb','=','usermultipleparcel.awb')->join('userinfocontact', 'userinfocontact.awb','=','usermultipleparcel.awb')->join('userpickupanddrop', 'userpickupanddrop.awb','=','usermultipleparcel.awb')->where(['usermultipleparcel.awb' => \Auth::user()->uniqNum])->get();
        }
        //fetch the information about selected offer

        $userSelectedOffer = $allTheuserInfo[0]->selectedOfferId;

        $allTheOfferInformation = DB::select('select * from offertable where id = ?', [$userSelectedOffer]);
        //we have the all the required information related to the customer that we need

        //check the payment is done or not
        //check the all the steps is completed r noto

        $checkTheSteps = DB::select('select * from usersteps where awbNumber = ?', [\Auth::user()->uniqNum]);

       if($checkTheSteps[0]->totalSteps === $checkTheSteps[0]->stepsComplete){
          return view('logged.homePaymentComplete', \compact('allTheuserInfo','allTheOfferInformation','checkTheSteps'));
       }else{
         return view('home',\compact('allTheuserInfo','allTheOfferInformation'));
       }
    }


    public function profile(){
        $allTheuserInfo = DB::table('users')->select('*')->join('userprofile', 'userprofile.awb', '=', 'users.uniqNum')->join('userinfocontact', 'userinfocontact.awb','=','users.uniqNum')->join('userpickupanddrop', 'userpickupanddrop.awb','=','users.uniqNum')->join('parcelbook', 'parcelbook.awbNumber', '=', 'users.uniqNum')->where(['users.uniqNum' => \Auth::user()->uniqNum])->get();
        if(count($allTheuserInfo) === 0){
            $allTheuserInfo = DB::table('usermultipleparcel')->select('*')->join('userprofile','userprofile.awb','=','usermultipleparcel.awb')->join('userinfocontact', 'userinfocontact.awb','=','usermultipleparcel.awb')->join('userpickupanddrop', 'userpickupanddrop.awb','=','usermultipleparcel.awb')->where(['usermultipleparcel.awb' => \Auth::user()->uniqNum])->get();
        }
        //fetch the information about selected offer

        $userSelectedOffer = $allTheuserInfo[0]->selectedOfferId;

        $allTheOfferInformation = DB::select('select * from offertable where id = ?', [$userSelectedOffer]);
        //we have the all the required information related to the customer that we need

        //check the payment is done or not
        //check the all the steps is completed r noto

        $checkTheSteps = DB::select('select * from usersteps where awbNumber = ?', [\Auth::user()->uniqNum]);
        //confirm the user has completed the return parcel address or not
        $confReturnParcel = DB::select('select * from userparcelreturn where awb = ?',[\Auth::user()->uniqNum]);
        if(\count($confReturnParcel) > 0){
            $returnParcel = 'Y';
        }else{
            $returnParcel = 'N';
        }
       if($checkTheSteps[0]->totalSteps === $checkTheSteps[0]->stepsComplete){
          return view('logged.profile', \compact('allTheuserInfo','allTheOfferInformation','checkTheSteps','returnParcel'));
       }else{
           $checkTheSteps = 'NULL';
         return view('logged.profile',\compact('allTheuserInfo','allTheOfferInformation','checkTheSteps','returnParcel'));
       }
    }

    public function parcelList(){
        echo "here we will list the all parcels";
    }


    public function parcelDetail($awb){
        //get the all detail fromdatabase
        $allTheuserInfo = DB::table('users')->select('*')->join('userprofile', 'userprofile.awb', '=', 'users.uniqNum')->join('userinfocontact', 'userinfocontact.awb','=','users.uniqNum')->join('userpickupanddrop', 'userpickupanddrop.awb','=','users.uniqNum')->join('parcelbook', 'parcelbook.awbNumber', '=', 'users.uniqNum')->where(['users.uniqNum' => \Auth::user()->uniqNum])->get();
        if(count($allTheuserInfo) === 0){
            $allTheuserInfo = DB::table('usermultipleparcel')->select('*')->join('userprofile','userprofile.awb','=','usermultipleparcel.awb')->join('userinfocontact', 'userinfocontact.awb','=','usermultipleparcel.awb')->join('userpickupanddrop', 'userpickupanddrop.awb','=','usermultipleparcel.awb')->where(['usermultipleparcel.awb' => \Auth::user()->uniqNum])->get();
        }
        //print_r($allTheuserInfo);
        return view('parcels\profileTabs\parcelDetail',['parcelDetail'=>$allTheuserInfo]);

    }


    //cancel the parcel

    public function cancelparcel($awb){
      // DB::select("UPDATE `usersteps` SET `isMultipleParcel` = '?' WHERE `usersteps`.`awbNumber` = '?'", ['C',$awb]);
      parcelBookStepsModel::where('awbNumber',$awb)->update([
          'isMultipleParcel' => 'C'
      ]);
       flash('The parcel is cancelled successfully')->warning();
       return redirect()->back();
    }

    public function enableParcel($awb){
       //get the type of parcel
       $confirm = DB::table('usermultipleparcel')->where(['awb' => $awb])->get();
       if(count($confirm) > 0){
           $type = 'Y';
       }else{
           $type = 'N';
       }

       //DB::select("UPDATE `usersteps` SET `isMultipleParcel` = '?' WHERE `usersteps`.`awbNumber` = '?'", [$type,$awb]);
       parcelBookStepsModel::where('awbNumber',$awb)->update([
        'isMultipleParcel' => $type
        ]);
       flash('The parcel is enabled successfully')->success();
       return redirect()->back();
    }
}
