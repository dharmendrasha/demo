<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\parcelBookModel;
class parcelBook extends Controller
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
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'from' =>'required',
            'fromPincode' => 'sometimes|max:10',
            'to' => 'required',
            'toPincode' => 'sometimes|max:10',
            'weight' => 'required|numeric'
        ]);
            $thisAwb = uniqid();
        $parcelBook = new parcelBookModel([
           'parcelFrom' => $request->get('from'),
           'parcelFromPincode' => $request->get('fromPincode'),
           'parcelTo' => $request->get('to'),
           'parcelToPincode' => $request->get('toPincode'),
           'parcelWeight' => $request->get('weight'),
           'awbNumber' => $thisAwb
        ]);
        $parcelBook->save();

        return redirect()->route('awbStatusCheck',['status' => 1, 'awb' => $thisAwb]);
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
