<?php

namespace App\Admin\Controllers;

use App\carrierServiceListModel;
use DB;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Layout\Content;
use Encore\Admin\Widgets\Table;

class carrierListTotalController extends AdminController
{

    protected $title = 'carrierServiceListModel';

    public function index(Content $content)
    {
        return $content->title('carrier List')->description('Here we list the carrier list');
    }

    public function carrierAdd(Content $content, $country, $state, $district, $pin)
    {
        //get the list of all the carrier list
        $theListOfCarrier = DB::table('admincarriernew')->paginate(10);
        return $content->title('Select the carrier')->description('Select the carrier to the Pin :' . $pin)->view('Admin\selectTheCarrier\see', ['tl' => $theListOfCarrier, 'country' => $country, 'state' => $state, 'district' => $district, 'pin' => $pin]);
    }

    public function carrierJoinTable($country, $state, $district, $pin, $carrier, $carrierName)
    {

        //varify the data is alredy present or not
        $varify = DB::table('carrierservicelist')->where(['pin' => $pin, 'carrierId' => $carrier])->get();
        print_r($varify);
        if (count($varify) === 1) {

            flash('The carrier is already Joined please try another')->error();
            return \redirect()->back();

        } else {

            $data = new carrierServiceListModel([
                'carrierId' => $carrier,
                'carrierName' => $carrierName,
                'country' => $country,
                'state' => $state,
                'district' => $district,
                'pin' => $pin,
            ]);
            $data->save();
            flash('The ' . $carrierName . 'is now joined to the ' . $pin)->success();
            return \redirect()->route('admin.crud.pin', ['country' => $country, 'state' => $state, 'district' => $district]);

        }
    }
}
