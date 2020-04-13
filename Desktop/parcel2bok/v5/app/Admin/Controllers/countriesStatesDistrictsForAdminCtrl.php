<?php

namespace App\Admin\Controllers;
use App\countriesStatesDistrictsZipForAdmin;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

use Illuminate\Http\Request;

use Encore\Admin\Widgets\Table;
use DB;
use App\AdminUserParcelUpdateModel;
use Carbon\Carbon;

//parcel add new
use App\addNewParcelAdmin;

class countriesStatesDistrictsForAdminCtrl extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\countriesStatesDistrictsZipForAdmin';

    /**
     * @index
     */
    public function index(Content $content){
        return $content->title('Area manegement')->Description('Here we manage the areas to serve')->view("admin.area.index");
    }


    public function addNewParcelCompany(Content $content){
        return $content->title('Add new parcel location')->description('Here we add new parcel Company')->view('admin.area.parcel.add');
    }

    public function addNewParcelCompanyPost(Request $request){
        //validating and posting the data of new carrier
        $request->validate([
            'carrierName' => 'Required|string|max:255',
            'carrierUrl' => 'Required|url|unique:AdminCarrierNew',
            'tarckingCarrierUrl' => 'Required|url|unique:AdminCarrierNew',
            'carrierLogo' => 'required|image|mimes:jpeg,png,jpg,bmp',
            'MinStartingRange' => 'required|integer',
            'MinEndingRange' => 'required|integer',
            'MinPrice' => 'required|integer',
            'MidStartingRange' => 'required|integer',
            'MidEndingRange' => 'required|integer',
            'MidPrice' => 'required|integer',
            'MaxStartingRange' => 'required|integer',
            'MaxEndingRange' => 'required|integer',
            'MaxPrice' => 'required|integer'
        ]);

        //uploading the image and saving it to the
        //upload photograph
        $photographloc = time() . '_' . uniqid() . '.' . request()->carrierLogo->getClientOriginalExtension();
        request()->carrierLogo->move(public_path('images/carrier'), $photographloc);


        $savingThisCarrier = new addNewParcelAdmin([
            'carrierName' => $request->get('carrierName'),
            'carrierUrl' => $request->get('carrierUrl'),
            'tarckingCarrierUrl' => $request->get('tarckingCarrierUrl'),
            'carrierLogo' => $photographloc,
            'MinStartingRange' => $request->get('MinStartingRange'),
            'MinEndingRange' => $request->get('MinEndingRange'),
            'MinPrice' => $request->get('MinPrice'),
            'MidStartingRange' => $request->get('MidStartingRange'),
            'MidEndingRange' => $request->get('MidEndingRange'),
            'MidPrice' => $request->get('MidPrice'),
            'MaxStartingRange' => $request->get('MaxStartingRange'),
            'MaxEndingRange' => $request->get('MaxEndingRange'),
            'MaxPrice' => $request->get('MaxPrice'),
        ]);

        $savingThisCarrier->save();

        flash('The carrier data has been saved successfully! Please add another carrier')->success();

        return \redirect()->route('admin.parcel.new');
    }

    //listing and pagination on the carrier

    public function showCarrier(Content $content){
        //get the table
        $carrierList = DB::table('AdminCarrierNew')->paginate(10);
        //var_dump($carrierList);
        return $content->title('Carrier List')->description('Here we showw the list of carrier')->view('Admin\area\parcel\show',\compact('carrierList'));

    }

    public function deleteCarrier($id){
        DB::delete('DELETE FROM `admincarriernew` WHERE `admincarriernew`.`id` = ?', [$id]);

        flash('The carrier is removed successfully')->error();
        return \redirect()->back();
    }

    public function updateCarrier(Content $content,$id){
        //here we show the view for updating the carrier
        // fetch the data from database
        $parcelDetail = DB::table('admincarriernew')->get();
        $detai = $parcelDetail[0];
        return $content->title('update carrier')->description("Update the carrier which id is - $id")->view('Admin\area\parcel\update',['det' => $detai]);
    }

    public function updateCarrierPost(Request $request, $id){
        //here we show the update the carrier via post method
        //validating and posting the data of new carrier
        $request->validate([
            'carrierName' => 'Required|string|max:255',
            'carrierUrl' => 'Required|url',
            'tarckingCarrierUrl' => 'Required|url',
            'carrierLogo' => 'required|image|mimes:jpeg,png,jpg,bmp',
            'MinStartingRange' => 'required|integer',
            'MinEndingRange' => 'required|integer',
            'MinPrice' => 'required|integer',
            'MidStartingRange' => 'required|integer',
            'MidEndingRange' => 'required|integer',
            'MidPrice' => 'required|integer',
            'MaxStartingRange' => 'required|integer',
            'MaxEndingRange' => 'required|integer',
            'MaxPrice' => 'required|integer'
        ]);

        //uploading the image and saving it to the
        //upload photograph

            $photographlocNew = time() . '_' . uniqid() . '.' . request()->carrierLogo->getClientOriginalExtension();
            request()->carrierLogo->move(public_path('images/carrier'), $photographlocNew);



        //updating data with model

        addNewParcelAdmin::where('id', $id)->update([
            'carrierName' => $request->get('carrierName'),
            'carrierUrl' => $request->get('carrierUrl'),
            'tarckingCarrierUrl' => $request->get('tarckingCarrierUrl'),
            'carrierLogo' => $photographlocNew,
            'MinStartingRange' => $request->get('MinStartingRange'),
            'MinEndingRange' => $request->get('MinEndingRange'),
            'MinPrice' => $request->get('MinPrice'),
            'MidStartingRange' => $request->get('MidStartingRange'),
            'MidEndingRange' => $request->get('MidEndingRange'),
            'MidPrice' => $request->get('MidPrice'),
            'MaxStartingRange' => $request->get('MaxStartingRange'),
            'MaxEndingRange' => $request->get('MaxEndingRange'),
            'MaxPrice' => $request->get('MaxPrice'),
        ]);

            flash('The carrer has been successfully updated')->success();
            return \redirect()->route('admin.parcel.show');

    }
}
