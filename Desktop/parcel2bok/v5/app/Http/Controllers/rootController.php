<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class rootController extends Controller
{
    public function index(){
        $countryList = DB::table('carrierpricemanage')->get();
        //print_r($countryList);

        /*
        $district = [];
        foreach ($countryList as $dist){
            $district =$dist;
        }
        */
       // print_r($district);


       return \view('welcome', ['district' => $countryList]);
    }

    //get the data from the dynamic data
    public function dynamicFunction(Request $request){

        if ($request->get('dependent') === 'state') {
            $country = $request->get('value');
            $getState = DB::table('operationalAreas')->where(['country' => $country])->get('state');
            if (!empty($getState[0]->state)) {
                //converting the data into array
                $s = $getState[0]->state;
                //converting them to array
                $a = explode(',', $s);
                foreach ($a as $b) {

                    echo '<option value=' . $b . '>' . $b . '</option>';
                }
            } else {
                $select = "<option value='' disabled selected>There is no such country assign to this country please insert some state and try again</option>";
                return $select;
            }
        } elseif ($request->get('dependent') === 'district') {
            $country = $request->get('country');
            $state = $request->get('value');
            $district = DB::table('districtList')->where(['state' => $state])->get('district');

           if (count($district) === 1) {
                $dist = $district[0]->district;
                $lp = explode(',', $dist);
                foreach ($lp as $lp) {
                    echo '<option value=' . $lp . '>' . $lp . '</option>';
                }
            } else {
                echo "<option value='' disabled selected>no data were found</option>";
            }


        }elseif($request->get('dependent') === 'pincode'){
            $new = $request->get('value');
            $dis = DB::table('pincodelist')->where(['district' => $new])->get('pin');
            if(count($dis) === 1){
                $dist = $dis[0]->pin;
                $lp = explode(',', $dist);
                foreach ($lp as $lp) {
                    echo '<option value=' . $lp . '>' . $lp . '</option>';
                }
            }else {
                echo "<option value='' disabled selected>no data were found</option>";
            }

        } else {
            echo "<option value='' disabled selected>BUG</option>";
        }

    }

}
