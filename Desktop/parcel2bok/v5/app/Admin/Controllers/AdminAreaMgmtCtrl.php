<?php

namespace App\Admin\Controllers;

use App\adminAreamanagementCountry;
use App\DistrictController;
use App\pincodeModel;
use DB;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;

//for managing the country
use Illuminate\Http\Request;

//pincode model
//district model
use Illuminate\Support\Str;

class AdminAreaMgmtCtrl extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\adminAreamanagementCountry';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    public function index(Content $content)
    {
        return $content->title('operational areas')->description('Here we manage operational areas')->view('Admin\area\operation\index');
    }

    //country insert
    public function addCountry(Content $content)
    {
        return $content->title('Insert Country')->description('Adding new Country for operational Management')->view('Admin\area\operation\addCountry');
    }

    //country insert post
    public function insertCountry(Request $request)
    {
        //validate the request
        $request->validate([
            'country' => 'required|string|unique:operationalAreas',
            'flag' => 'required|image|mimes:jpeg,bpm,png,jpg',
        ]);

        //uploading the flag
        $photographlocNew = time() . '_' . uniqid() . '.' . request()->flag->getClientOriginalExtension();
        request()->flag->move(public_path('images/flag'), $photographlocNew);

        //save the date to the database
        $country = new adminAreamanagementCountry([
            'country' => $request->get('country'),
            'flag' => $photographlocNew,
        ]);

        $country->save();
        flash($request->get('country') . " : Has been saved successfully")->success();
        return \redirect()->back()->withInput();

    }

    //state

    public function insertState(Content $content)
    {
        $getCountry = DB::table('operationalAreas')->get();

        return $content->title('Insert State')->description('Adding new states to the Country')->view('Admin\area\operation\state\add', ['country' => $getCountry]);
    }

    //state post

    public function insertStatePost(Request $request, Content $content)
    {

        $request->validate([
            'country' => 'required',
            'state' => 'required|string',
        ]);
        //confirming the table is not empty
        //if the data exists it will only update not insert
        $checkTable = DB::table('operationalareas')->where(['country' => $request->get('country')])->get();

        if (empty($checkTable[0]->state)) {
            //validate reuest

            $country = $request->get('country');
            //extract the data from state

            //var_dump($request->get('state'));
            $a = $request->get('state');

            $b = explode(',', $a);

            //confirm the data from and it has unique value

            $state = array_unique($b);
            return $content->title('state Confirmation')->description('Confirm the state for :' . $request->get('country'))->view('Admin\area\operation\state\conf', \compact('state', 'country'));

        } else {
            flash('The : ' . $request->get('country') . ' : is already updated. Please try another country. If you want to insert something here. Please try to update it')->error();

            return \redirect()->back();
        }

    }

    public function insertStatePostDbl(Request $request)
    {
        //validate reuest
        $request->validate([
            'country' => 'required|string',
            'state' => 'required|string',
        ]);

        adminAreamanagementCountry::where('country', $request->get('country'))->update([
            'state' => $request->get('state'),
        ]);

        flash($request->get('country') . ' : Has successfully updated')->success();

        return \redirect()->route('admin.area.state.add');
    }

    //inserting the district

    public function insertDistrict(Content $content)
    {
        //getting the list of countries
        $getCountry = DB::table('operationalAreas')->get();
        return $content->title('Add the district')->description('Here we insert the distric to the states')->view('Admin\area\operation\state\district\add', ['c' => $getCountry]);
    }

    //dynamic states
    public function dynamicFetch(Request $request)
    {

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
            $district = DB::table('districtList')->where(['country' => $country, 'state' => $state])->get('district');
            if (count($district) === 1) {
                $dist = $district[0]->district;
                $lp = explode(',', $dist);
                foreach ($lp as $lp) {
                    echo '<option value=' . $lp . '>' . $lp . '</option>';
                }
            } else {
                echo "<option value='' disabled selected>no data were found</option>";
            }

        } else {
            echo "<option value='' disabled selected>No state were assign please update it</option>";
        }

    }

    //confirming the data from user

    public function confrimDistrict(Content $content, Request $request)
    {
        //confirm district is available or not
        $request->validate([
            'country' => 'required|string|max:255',
            'state' => 'required|unique:districtList|string|max:255',
            'district' => 'required|string',
        ]);

        $s = $request->get('state');
        $conf = DB::table('operationalAreas')->where(['country' => $request->get('country')])->get('district');

        if ($conf[0]->district === null) {
            $ua = explode(',', $request->get('district'));
            $dis = array_unique($ua);

            return $content->title('Confirm district')->description('Confirm the districts that you type')->view('Admin\area\operation\state\district\conf', ['dis' => $dis, 'country' => $request->get('country'), 'state' => $request->get('state')]);
        } else {
            $inAr = (array) json_decode($conf[0]->district);
            $findState = array_search($s, array_column($inAr, 'state'));

            if ($findState === false) {
                $ua = explode(',', $request->get('district'));
                $dis = array_unique($ua);
                return $content->title('Confirm district')->description('Confirm the districts that you type')->view('Admin\area\operation\state\district\conf', ['dis' => $dis, 'country' => $request->get('country'), 'state' => $request->get('state')]);
            } else {
                flash('The state is alredy updated please try to update :' . $s)->error();
                return \redirect()->back();
            }

        }
    }

    public function districtDblConf(Request $request)
    {
        //validation the request
        $request->validate([
            'country' => 'required|string|max:255',
            'state' => 'required|string|max:255',
            'district' => 'required|string',
        ]);
        //insert thedata into database
        $districtSave = new DistrictController([
            'country' => $request->get('country'),
            'state' => $request->get('state'),
            'district' => $request->get('district'),
        ]);

        $districtSave->save();
        flash('District has been save to the database');
        return \redirect()->route('admin.area.district.add');

    }

    //start the pincode

    public function pincodeInsert(Content $content)
    {
        //getting the list of countries
        $getCountry = DB::table('operationalAreas')->get();
        return $content->title('Pincodes Insert')->description('Here we insert the Pincode')->view('Admin\area\operation\state\district\pin\add', ['c' => $getCountry]);
    }

    //
    public function pincodePost(Content $content, Request $request)
    {
        //validate req
        $request->validate([
            'country' => 'required',
            'state' => 'required',
            'district' => 'required|unique:pincodeList',
            'pincode' => 'required',
        ]);
        //confirm the pincode is feild is empty
        $check = DB::table('operationalAreas')->where(['country' => $request->get('country')])->get('pin');
        if ($check[0]->pin === null) {
            $pinCode = explode(',', $request->get('pincode'));
            $unPin = array_unique($pinCode);
            return $content->title('Pincode Confirm')->view('Admin\area\operation\state\district\pin\conf', ['pin' => $unPin, 'country' => $request->get('country'), 'state' => $request->get('state'), 'district' => $request->get('district')]);
        } else {
            $pinAr = (array) json_decode($check[0]->pin);
            print_r($pinAr);
            $findPin = array_search($request->get('district'), array_column($pinAr, 'district'));

            if ($findPin === false) {
                $pinCode = explode(',', $request->get('pincode'));
                $unPin = array_unique($pinCode);
                return $content->title('Pincode Confirm')->view('Admin\area\operation\state\district\pin\conf', ['pin' => $unPin, 'country' => $request->get('country'), 'state' => $request->get('state'), 'district' => $request->get('district')]);
            } else {
                flash('The pincode is alredy updated please try to update :' . $request->get('district'))->error();
                return \redirect()->back();
            }
        }

    }

    public function pincodeSave(Request $request)
    {
        $request->validate([
            'country' => 'required',
            'state' => 'required',
            'district' => 'required',
            'pincode' => 'required',
        ]);
        $pinCodeSave = new pincodeModel([
            'country' => $request->get('country'),
            'state' => $request->get('state'),
            'district' => $request->get('district'),
            'pin' => $request->get('pincode'),
        ]);

        $pinCodeSave->save();

        flash('The pin code are saved')->success();
        return \redirect()->route('admin.area.pin.add');
    }

    //manage the locations

    public function areaControllerManage(Content $content)
    {
        return $content->title('Manage the locations')->description('managing the Locations')->view('Admin\areaUp\index');
    }

    //list of countries
    public function crudCountry(Content $content)
    {
        $list = DB::table('operationalareas')->paginate(10);

        return $content->title('Country list')->description('country list')->view('Admin\areaUp\country\see', \compact('list'));
    }

    //cuntry delete
    public function countryDelete($id)
    {
        DB::delete("DELETE FROM `operationalareas` WHERE `operationalareas`.`id` = ?", [$id]);
        flash('The country has been successfully removed')->error();
        return redirect()->back();

    }

    public function countryEdit(Content $content, $id)
    {
        $listKp = DB::table('operationalareas')->where(['id' => $id])->get(['country', 'flag']);
        return $content->title('Update country')->description('Editing the country')->view('Admin\areaUp\country\edit', ['x' => $listKp, 'id' => $id]);
    }

    public function countryEditPost(Request $request, $id)
    {
        // echo "echo edit the post";
        //validate the data
        $request->validate([
            'country' => 'required|unique:operationalAreas',
            'flag' => 'required|image|mimes:jpeg,png,jpg,bmp:',
        ]);

        //upload the image
        //uploading the flag
        $photographlocNew = time() . '_' . uniqid() . '.' . request()->flag->getClientOriginalExtension();
        request()->flag->move(public_path('images/flag'), $photographlocNew);

        adminAreamanagementCountry::where(['id' => $id])->update([
            'country' => $request->get('country'),
            'flag' => $photographlocNew,
        ]);

        flash('The country has been successfully updated')->success();
        return redirect()->route('admin.crud.country');

    }

    public function crudState(Content $content, $country)
    {
        $stateList = DB::table('operationalAreas')->where(['country' => $country])->get('state');
        $stateIs = $stateList[0]->state;
        $sta = explode(',', $stateIs);
        return $content->title('State list')->description("The state list of $country")->view('Admin\areaUp\country\state\see', ['state' => $sta, 'country' => $country]);
    }

    public function crudStateRem($country, $state)
    {
        // get all the states from the state
        $allTheState = DB::table('operationalAreas')->where(['country' => $country])->get('state');

        //get the state
        $theState = $allTheState[0]->state;

        //covert all the state into array
        $thesta = explode(',', $theState);
        //  print_r($thesta);

        //remove the key
        unset($thesta[$state]);
        //print_r($thesta);

        //convert them into the array
        $ui = implode(',', $thesta);
        //update the data
        adminAreamanagementCountry::where(['country' => $country])->update([
            'state' => $ui,
        ]);

        flash('The state has been removed success fully ')->warning();
        return \redirect()->back();
    }

    public function crudStateEdit(Content $content, Request $request, $country, $state)
    {

        //validate the request
        $request->validate([
            'stateNew' => 'required|string',
        ]);
        $newState = $request->get('stateNew');

        $stateList = DB::table('operationalAreas')->where(['country' => $country])->get('state');
        $stateIs = $stateList[0]->state;
        $sta = explode(',', $stateIs);

        //find the key
        $theK = array_search($state, $sta);

        $updateArray = [
            $theK => $newState,
        ];

        //replacing the array
        $repArra = array_replace($sta, $updateArray);

        //convert them into string
        $updatedString = implode(',', $repArra);

        //update it into the data base
        adminAreamanagementCountry::where(['country' => $country])->update(['state' => $updatedString]);

        flash('State has been success fully updated')->success();
        return \redirect()->back();
        //return $content->title('Edit State')->description("Editig the state : $state");
    }

    //seee the list of disstrict

    public function crudDistrict(Content $content, $country, $state)
    {

        //get the list of country
        $theDistrictList = DB::table('districtlist')->where(['country' => $country, 'state' => $state])->get('district');
        if (count($theDistrictList) === 1) {
            $theExackList = $theDistrictList[0]->district;
            $distArray = explode(',', $theExackList);
            return $content->title('District list')->description('See the list of districts')->view('Admin\areaUp\country\state\district\see', ['lx' => $distArray, 'country' => $country, 'state' => $state]);
        } else {
            flash('There list is not updated please update it first')->error();
            return \redirect()->back();
        }

    }

    public function crudDistrictRem($country, $state, $district)
    {
        //getting the list from the array
        $theList = DB::table('districtlist')->where(['country' => $country, 'state' => $state])->get('district');
        $theIn = $theList[0]->district;
        $inArray = explode(',', $theIn);
        unset($inArray[$district]);
        $outArray = implode(',', $inArray);
        DistrictController::where(['country' => $country, 'state' => $state])->update([
            'district' => $outArray,
        ]);
        flash('The district has been deleted successfully ')->error();
        return \redirect()->back();
    }

    public function crudDistrictDel(Request $request, $country, $state, $district)
    {
        //validate request
        $request->validate([
            'districtNew' => 'required|string|max:255',
        ]);

        $districtNew = $request->get('districtNew');

        $districtList = DB::table('districtlist')->where(['country' => $country, 'state' => $state])->get('district');
        $districtIs = $districtList[0]->district;
        $dis = explode(',', $districtIs);

        //find the key
        $theK = array_search($district, $dis);

        $updateArray = [
            $theK => $districtNew,
        ];

        //replacing the array
        $repArra = array_replace($dis, $updateArray);

        //convert them into string
        $updatedString = implode(',', $repArra);
        DistrictController::where(['country' => $country, 'state' => $state])->update([
            'district' => $updatedString,
        ]);
        flash('The district has been updated successfully ')->success();
        return \redirect()->back();
    }

    public function crudPincode(Content $content, $country, $state, $district)
    {
        $pincodeList = DB::table('pincodelist')->where(['country' => $country, 'state' => $state, 'district' => $district])->get('pin');
        if (count($pincodeList) === 0) {
            flash('the pin code list is not updated')->error();
            return redirect()->back();
        } else {

            $thePincode = $pincodeList[0]->pin;
            $inArrr = explode(',', $thePincode);
            return $content->title('Pincode list')->description('The list of pin code')->view('Admin\areaUp\country\state\district\pincode\see', ['lx' => $inArrr, 'country' => $country, 'state' => $state, 'district' => $district]);
        }

    }

    //
    public function crudPincodeRem($country, $state, $district, $pin)
    {
        $pincodeList = DB::table('pincodelist')->where(['country' => $country, 'state' => $state, 'district' => $district])->get('pin');
        $thePincode = $pincodeList[0]->pin;
        $inArrr = explode(',', $thePincode);
        unset($inArrr[$pin]);
        $outArray = implode(',', $inArrr);
        pincodeModel::where(['country' => $country, 'state' => $state, 'district' => $district])->update([
            'pin' => $outArray,
        ]);

        flash('The pincode has been deleted successfully ')->error();
        return \redirect()->back();
    }

    //
    public function crudPincodeEdit(Request $request, $country, $state, $district, $pin)
    {
        //validate request
        $request->validate([
            'pinNew' => 'required|integer|max:9999999999',
        ]);

        $pinNew = $request->get('pinNew');

        $pinList = DB::table('pincodelist')->where(['country' => $country, 'state' => $state, 'district' => $district])->get('pin');
        $pinIs = $pinList[0]->pin;
        $pi = explode(',', $pinIs);

        $updateArray = [
            $pin => $pinNew,
        ];

        $repArra = array_replace($pi, $updateArray);

        $updatedString = implode(',', $repArra);
        pincodeModel::where(['country' => $country, 'state' => $state, 'district' => $district])->update([
            'pin' => $updatedString,
        ]);
        flash('The pincode has been updated successfully ')->success();
        return \redirect()->back();
    }

}
