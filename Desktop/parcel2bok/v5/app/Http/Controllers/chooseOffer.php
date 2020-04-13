<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\offerTableModel;
use DB;
class chooseOffer extends Controller
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
       // echo "this is the choose offer section";
       //$offerNew = DB::table('offertable')->paginate('10');
       //
       //$offerNew = DB::table('carrierservicelist')->join('admincarriernew', 'admincarriernew.id', '=', 'carrierservicelist.carrierId')->get();
       //printf(json_encode($offerNew));

       //get the user district by awb from the table

        //1. get the type of awb from the user
        $theParcelType = DB::table('usersteps')->where(['awbNumber' => $awb])->get('isMultipleParcel');
        //confirm
        if(count($theParcelType) === 1){
            //get type
            $theType =$theParcelType[0]->isMultipleParcel;
            if($theType === 'Y'){
                //echo "yes";
                //get the awb data from the table for multiple parcel
                $theDataList = DB::table('usermultipleparcel')->where(['awb' => $awb])->get();
               //get the essential data
               //var_dump($theDataList);
               if(count($theDataList) === 1){
                    $parcelFrom = $theDataList[0]->parcelFrom;
                    $parcelTo = $theDataList[0]->to;

                    //confirm the carrier is ok or not
                    $confOne = DB::table('carrierservicelist')->where(['district' => $parcelTo])->get();

                    if(!empty($confOne)){
                        $offerNew = DB::table('carrierservicelist')->join('admincarriernew', 'admincarriernew.id', '=', 'carrierservicelist.carrierId')->paginate(10);

                        //printf(json_encode($offerNew));
                        /*
                        $offerNew = DB::table('carrierpricemanage')->join('admincarriernew', 'carrierpricemanage.carrierId', '=', 'admincarriernew.id')->get();
                        print_r($offerNew);
                        */
                        return view('choosePlan', \compact('offerNew', 'awb'));
                    }else{
                        flash('There is no such carrier we found please try again with differrent option last Option : '.$parcelTo)->error();
                        return  redirect()->route('index');
                    }
               }else{
                flash('Something went wrong. Please try again')->error();
                return  redirect()->route('index');
               }
            }elseif($theType === 'N'){
                /*
                $offerNew = DB::table('carrierpricemanage')->join('admincarriernew', 'carrierpricemanage.carrierId', '=', 'admincarriernew.id')->get();
                print_r($offerNew);
                */
                $offerNew = DB::table('carrierservicelist')->join('admincarriernew', 'admincarriernew.id', '=', 'carrierservicelist.carrierId')->paginate(10);
                return view('choosePlan', \compact('offerNew', 'awb'));
            }else{
                flash('Something went wrong. Please try again')->error();
                return  redirect()->route('index');
            }
        }else{
            flash('Something went wrong. Please try again')->error();
            return  redirect()->route('index');
        }


       // return view('choosePlan', \compact('offerNew', 'awb'));
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
