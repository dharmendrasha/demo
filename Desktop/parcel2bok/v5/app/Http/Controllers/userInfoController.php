<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\userInfoMOdel;
class userInfoController extends Controller
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
    public function index($awb)
    {

       return view('userInfo', \compact('awb'));
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
    public function store(Request $request, $awb)
    {
        $this->validate($request,[
            'pickUpaddressOne' => 'required|string|max:255',
            'pickUpAddresstwo' => 'sometimes|string|max:255',
            'pickUpCity' => 'required|string|max:255',
            'pickupDistict' => 'required|string|max:255',
            'pickUpState' => 'required|string|max:255',
            'pickUpCountry' => 'required|string|max:255',
            'pickUpPin' => 'required|integer',
            'dropaddressOne' => 'required|string|max:255',
            'dropAddresstwo' => 'sometimes|string|max:255',
            'dropCity' => 'required|string|max:255',
            'dropDistict' => 'required|string|max:255',
            'dropState' => 'required|string|max:255',
            'dropCountry' => 'required|string|max:255',
            'dropPin' => 'required|integer'
        ]);
        $newAwb = $awb;

        $userInfo = new userInfoModel([
            'awb' => $newAwb,
            'pickUpaddressOne' => $request->get('pickUpaddressOne'),
            'pickUpAddresstwo' => $request->get('pickUpAddresstwo'),
            'pickUpCity' => $request->get('pickUpCity'),
            'pickupDistict' => $request->get('pickupDistict'),
            'pickUpState' => $request->get('pickUpState'),
            'pickUpCountry' => $request->get('pickUpCountry'),
            'pickUpPin' => $request->get('pickUpPin'),
            'dropaddressOne' => $request->get('dropaddressOne'),
            'dropAddresstwo' => $request->get('dropAddresstwo'),
            'dropCity' => $request->get('dropCity'),
            'dropDistict' => $request->get('dropDistict'),
            'dropState' => $request->get('dropState'),
            'dropCountry' => $request->get('dropCountry'),
            'dropPin' => $request->get('dropPin')
        ]);


         $userInfo->save();
         return redirect()->route('statusEdit',['status' => 3, 'awb' => $newAwb]);


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
