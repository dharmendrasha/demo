<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\userMultipleParcelModel;
use DB;
class multipleParcelBook extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct(){
        $this->middleware('guest');
    }
    public function index(Request $request)
    {
        $this->validate($request, [
            'parcelQuantity' => 'required|integer|max:50|min:2'
        ]);

        $totalParcel = $request->get('parcelQuantity');

        $theTotal = $totalParcel +1;


        //$countryList = DB::table('pincodelist')->get('district');
        $countryList = DB::table('carrierpricemanage')->get();
        return view('parcels.multipleParcelBook', ['theTotal' => $theTotal, 'district' => $countryList]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *DB::table('usermultipleparcel')->select('*')->join('userprofile','userprofile.awb','=','usermultipleparcel.awb')->join('userinfocontact', 'userinfocontact.awb','=','usermultipleparcel.awb')->join('userpickupanddrop', 'userpickupanddrop.awb','=','usermultipleparcel.awb')->where(['usermultipleparcel.awb' => \Auth::user()->uniqNum])->get()
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'totalQuantity' => 'required|integer',
            'parcelFrom' => 'required|string',
            'fromPincode' => 'required|integer|min:6',
            'to' => 'required|string|max:500',
            'toPincode' => 'required|integer|min:6',
            'productId' => 'required|array|max:255',
            'weight' => 'required|array|max:255',
            'width' => 'required|array|max:255',
            'height' => 'required|array|max:255',
            'length' => 'required|array|max:255'
        ]);
        $totalQuantity = $request->get('totalQuantity');
            $allTheData = [];
       for ($i=0; $i < $totalQuantity; $i++) {
           $allTheData[$i] = [
                'productId' => $_POST['productId'][$i],
                'weight' => $_POST['weight'][$i],
                'width' => $_POST['width'][$i],
                'height' => $_POST['height'][$i],
                'length' => $_POST['length'][$i]
              ];
        }
      $allTheDataIntoJson = json_encode($allTheData);

      $awb = uniqid();

      $saveTheDetails = new userMultipleParcelModel([
          'awb' => $awb,
          'totalQuantity' => $request->get('totalQuantity'),
          'parcelFrom' => $request->get('parcelFrom'),
          'fromPincode' => $request->get('fromPincode'),
          'to' => $request->get('to'),
          'toPincode' => $request->get('toPincode'),
          'productDetails' => $allTheDataIntoJson
      ]);

      $saveTheDetails->save();
      flash(__('message.parcelSuccess',['awb' => $awb]))->success();
      return redirect()->route('multipleParcelSteps',['step' => 1,'awb' => $awb, 'multiple' => 'Y']);
      //return redirect()->route('index');



    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
