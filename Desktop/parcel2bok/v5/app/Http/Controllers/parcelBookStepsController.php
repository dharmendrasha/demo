<?php

namespace App\Http\Controllers;

use App\parcelBookStepsModel;
use DB;
use Illuminate\Http\Request;

class parcelBookStepsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        //$this->middleware('guest');
    }
    public function index($step, $awb, $multiple)
    {
        //fetching the userID  from DB
        $getUser = DB::select('select id from usermultipleparcel where awb = ?', [$awb]);
        $userIdInfo = $getUser['0']->id;
        //echo $userIdInfo;

        $totalSteps = 7;
        $nextStep = $step + 1;

        $multipleDataSave = new parcelBookStepsModel([
            'userId' => $userIdInfo,
            'awbNumber' => $awb,
            'totalSteps' => $totalSteps,
            'stepsComplete' => $step,
            'nextStep' => $nextStep,
            'isMultipleParcel' => $multiple,
        ]);
        $multipleDataSave->save();

        flash(__('message.parcelSuccess', ['awb' => $awb]))->success();

        return redirect()->route('basicPlan', ['awb' => $awb]);
        //insert the data into the database

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    function new ($steps, $awb) {
        //confirm the awb is correct or not
        $awbNum = DB::table('parcelBook')->where('awbNumber', $awb)->get();
        //printf($awb);
        $totalSteps = 7;
        $nextStep = $steps + 1;

        if ($awbNum['0']->awbNumber) {
            $theStepSave = new parcelBookStepsModel([
                'userId' => $awbNum['0']->id,
                'awbNumber' => $awbNum['0']->awbNumber,
                'totalSteps' => $totalSteps,
                'stepsComplete' => $steps,
                'nextStep' => $nextStep,
                'isMultipleParcel' => 'N',
            ]);
            $theStepSave->save();

            flash(__('message.parcelSuccess', ['awb' => $awb]))->success();

            return redirect()->route('basicPlan', ['awb' => $awb]);
        } else {
            flash(__('message.parcelError'))->error();
            return redirect()->route('index');
        }
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

    public function edit($steps, $awb)
    {
        DB::update('update userSteps set stepsComplete = ? where awbNumber = ?', [$steps, $awb]);
        //flash(__('message.parcelSuccess', ['awb' => $awb]))->success();
        //return redirect()->route('index');
        //redirect the user to the differrent routes
        $nextStep = $steps + 1;
        switch ($nextStep) {
            case '3':
                flash(__('message.parcelSuccess', ['awb' => $awb]))->success();
                return redirect()->route('userInfo', ['awb' => $awb]);
                break;
            case '4':
                flash(__('message.parcelSuccess', ['awb' => $awb]))->success();
                return redirect()->route('userContact', ['status' => $nextStep, 'awb' => $awb]);
                break;
            case '5':
                flash(__('message.parcelSuccess', ['awb' => $awb]))->success();
                return redirect()->route('extraRegistration', ['awb' => $awb]);
                break;
            case '6':
                flash(__('message.allStepsHasBeenCompleted'))->success();
                return redirect()->route('home');
                break;

        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update($steps, $awb, $selectedOffer)
    {
        // $awbNum = DB::table('parcelBook')->where('awbNumber', $awb)->get();
        $awbNum = DB::select('select * from parcelBook where awbNumber = ?', [$awb]);

        if (empty($awbNum)) {
            $awbNum = DB::select('select * from usermultipleparcel where awb = ?', [$awb]);
        }

        //printf($awb);
        $totalSteps = 7;
        $nextStep = $steps + 1;
        //echo $nextStep;
        //put the data into the table 'userprofile'
        DB::insert('insert into userProfile (userid, awb, selectedOfferId) values (?, ?, ?)', [$awbNum[0]->id, $awb, $selectedOffer]);

        DB::update('update userSteps set stepsComplete = ? where awbNumber = ?', [$steps, $awb]);

        flash(__('message.parcelSuccess', ['awb' => $awb]))->success();
        //return redirect()->route('index');
        //redirect the user to the differrent routes
        $nextStep = $steps + 1;
        switch ($nextStep) {
            case '3':
                flash(__('message.parcelSuccess', ['awb' => $awb]))->success();
                return redirect()->route('userInfo', ['awb' => $awb]);
                break;
            case '4':
                flash(__('message.parcelSuccess', ['awb' => $awb]))->success();
                return redirect()->route('index');
        }
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

    public function track(Request $request)
    {

        //validate the request
        $request->validate(
            ['awbNumber' => 'required|string']
        );
        $awbNumb = $request->get('awbNumber');

        //confirm the data from the database
        $confDatab = parcelBookStepsModel::where('awbNumber', $awbNumb)->first();
        if (!empty($confDatab)) {
            //confirm that the user has completed at least step 6 and created the user id and password
            /*
            if it not completed the step 6 it will be redirect to the another route with differrent view to
            the user to notify that he/she will have to complete the following step  to complete the step.
             */
            //start
            $userhaveToCompleteTheStep = 6;

            if ($confDatab->stepsComplete >= $userhaveToCompleteTheStep) {

                //end
                //if the parcel is being updated by the admin and there is suc a note there it will be shown to the customer
                $customeNote = DB::table('adminparcelupdatestatus')->where(['awb' => $awbNumb])->get();
                if (count($customeNote) > 0) {
                    $actionTaken = 'The such sction is taken by the admin';
                    $action = $customeNote[0]->action;
                    $notice = $customeNote[0]->Notice;
                    $on = $customeNote[0]->updated_at;
                } else {
                    $actionTaken = 'There is no such new action is taken by the user';
                    $action = 'NULL';
                    $notice = 'NULL';
                    $on = 'NULL';

                }

                if ($confDatab->isMultipleParcel === 'C') {
                    $new = 'The parcel is cancelled';
                    $step = $confDatab->stepsComplete;
                    if($step === '7'){
                        $payment = "Your payment will be refunded you in 7 working days";
                    }else{
                        $payment = "";
                    }
                    return view('track', ['sta' => $new,'payment' => $payment, 'status' => $confDatab, 'cancelled' => 'true', 'actionTaken' => $actionTaken, 'action' => $action, 'notice' => $notice, 'on' => $on]);
                } elseif ($confDatab->isMultipleparcel === 'N') {
                    $new = 'The parcel is a single parcel';
                    $step = $confDatab->stepsComplete;
                    if($step === '7'){
                        $payment = "Your payment is success";
                    }else{
                        $payment = "Your payment is not transacted yet.";
                    }
                    return view('track', ['sta' => $new,'payment' => $payment, 'status' => $confDatab, $confDatab, 'cancelled' => 'false', 'actionTaken' => $actionTaken, 'action' => $action, 'notice' => $notice, 'on' => $on]);
                } else {
                    $new = "The parcel is a Multiple parcel";
                    $step = $confDatab->stepsComplete;
                    if($step === '7'){
                        $payment = "Your payment is success";
                    }else{
                        $payment = "Your payment is not transacted yet.";
                    }
                    return view('track', ['sta' => $new,'payment' => $payment, 'status' => $confDatab, $confDatab, 'cancelled' => 'false', 'actionTaken' => $actionTaken, 'action' => $action, 'notice' => $notice, 'on' => $on]);
                }

            } else {
                //get the current step
                $curStep = $confDatab->stepsComplete;
                $nextStep = $curStep + 1;
                //echo "currnt step : $curStep, Next step : $nextStep";
                switch ($nextStep) {
                    case '1':
                        $printStaep = "the current step you have to follow is $nextStep";
                        $neststep = route('index');
                        return \view('parcels\incompletuser',['us'=>$printStaep,'routeNew' =>$neststep]);
                        break;
                    case '2':
                        $printStaep = "the current step you have to follow is $nextStep";
                        $neststep = route('basicPlan',['awb'=>$awbNumb]);
                        return \view('parcels\incompletuser',['us'=>$printStaep,'routeNew' =>$neststep]);
                        break;
                    case '3':
                        $printStaep = "the current step you have to follow is $nextStep";
                        $neststep = route('userInfo',['awb'=>$awbNumb]);
                        return \view('parcels\incompletuser',['us'=>$printStaep,'routeNew' =>$neststep]);
                        break;
                    case '4':
                        $printStaep = "the current step you have to follow is $nextStep";
                        $neststep = route('userContact',['status'=>$nextStep,'awb'=>$awbNumb]);
                        return \view('parcels\incompletuser',['us'=>$printStaep,'routeNew' =>$neststep]);
                        break;
                    case '5':
                        $printStaep = "the current step you have to follow is $nextStep";
                        $neststep = route('extraRegistration',['awb'=>$awbNumb]);
                        return \view('parcels\incompletuser',['us'=>$printStaep,'routeNew' =>$neststep]);
                        break;
                    case '6':
                        $printStaep = "the current step you have to follow is $nextStep";
                        $neststep = '';//empty because it will autometically register the user
                        return \view('parcels\incompletuser',['us'=>$printStaep,'routeNew' =>$neststep]);
                        break;
                    case '7':
                        $printStaep = "the current step you have to follow is $nextStep";
                        $neststep = route('home');
                        return \view('parcels\incompletuser',['us'=>$printStaep,'routeNew' =>$neststep]);
                        break;
                    default:
                        echo '500 : something unwnted happen in our side at  parcelBookStepsController@track';
                        break;
                }

            }
        } else {
            flash('The awb number is wrong please try with correct number')->error();
            return redirect()->back();
        }

    }

}
