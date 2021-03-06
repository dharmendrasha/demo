<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\user;
use App\extraRegistrationModel;
class extraRegistrationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('guest');
    }
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($awb)
    {
      $newAllInformation = DB::table('parcelbook')->select('*')->join('userprofile','userprofile.awb','=','parcelbook.awbNumber')->join('userinfocontact', 'userinfocontact.awb','=','parcelbook.awbNumber')->join('userpickupanddrop', 'userpickupanddrop.awb','=','parcelbook.awbNumber')->where(['parcelbook.awbNumber' => $awb])->get();

      if(count($newAllInformation) === 0){
        $newAllInformation = DB::table('usermultipleparcel')->select('*')->join('userprofile','userprofile.awb','=','usermultipleparcel.awb')->join('userinfocontact', 'userinfocontact.awb','=','usermultipleparcel.awb')->join('userpickupanddrop', 'userpickupanddrop.awb','=','usermultipleparcel.awb')->where(['usermultipleparcel.awb' => $awb])->get();
    }

      //printf($newAllInformation[0]->awb);
        $theAwb = $newAllInformation[0]->awb;
        return view('newRegistration',\compact('newAllInformation','theAwb'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
