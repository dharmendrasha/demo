<?php

namespace App\Admin\Controllers;

use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;

use Illuminate\Http\Request;

use Encore\Admin\Widgets\Table;
use DB;

use App\priceController;

use Carbon\Carbon;

class carrierPriceManage extends AdminController{
    protected $title = 'App\priceController';

    public function index(Content $content){
        //get all the active carrier list
       //get the table
       $carrierList = DB::table('AdminCarrierNew')->paginate(10);
       //var_dump($carrierList);
       return $content->title('Carrier List')->description('Here we showw the list of carrier')->view('Admin\carrier\rate',\compact('carrierList'));
    }
    public function byWeight(Content $content,$carrierId,$carrierName){
        //getting the list of all the parcels
        $theNewList = DB::table('carrierservicelist')->where(['carrierId' => $carrierId])->paginate(10);
        if(count($theNewList) != 0){
            //here we list the options to add rate
            return $content->title('Rate Manage')->description('List of all the options to add the rate of zone')->view('Admin\carrier\byWeight',['cId'=>$carrierId,'cName' => $carrierName, 'paginate'=>$theNewList]);
            //
        }else{
            flash('There is no pincode zone are added to the this carrier')->error();
            return redirect()->back();
        }
        //
    }

    public function insert(Request $request,$carrierId,$carrierName,$district,$pin){
        //validate the request
        $request->validate([
            'rate' => 'required|integer'
        ]);
        $rate = $request->get('rate');

        //confirm that this has the

        $confirmThat = DB::table('carrierPriceManage')->where(['carrierId' => $carrierId, 'priceByArea' => $district])->get();

        if(count($confirmThat) === 0){


            $savePrice = new priceController([
                'carrierId' => $carrierId,
                'carrierName' => $carrierName,
                'carrierArea' => $district,
                'AreaPincodes' => $pin,
                'weightMeasurements' => '',
                'priceByArea' => $rate
            ]);

            $savePrice->save();
            \flash('The data is inserted successfully to the database.')->success();
            return redirect()->back();

        }else{
            flash('This is already has in the database please update it and try another')->warning();
            return redirect()->back();
        }

    }
        public function showListOfAll(Content $content){
            //list of all the parcel area
            $theListOfAll = DB::table('carrierPriceManage')->join('AdminCarrierNew','carrierPriceManage.carrierId', '=', 'admincarriernew.id')->paginate(10);
            //print_r($theListOfAll);
            return $content->title('carrier List with all the data')->description('Here we will list all the carrier and the data')->view('Admin\carrier\list', ['list' => $theListOfAll]);

    }
}
