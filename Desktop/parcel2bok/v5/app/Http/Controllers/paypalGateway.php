<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use PayPal\Api\Amount;
use PayPal\Api\Details;
use PayPal\Api\Item;
use PayPal\Api\ItemList;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\RedirectUrls;
use PayPal\Api\Transaction;

use DB;
use App\paypalPaymentModel;
use App\paymentRecord;
class paypalGateway extends Controller
{
    public function __construct(){
        $this->middleware('auth');

    }





    public function payWithpaypal(Request $request){

        $apiContext = new \PayPal\Rest\ApiContext(
            new \PayPal\Auth\OAuthTokenCredential(
              \config('paypal.paypal.clent'),
              \config('paypal.paypal.secret')
            ));




            // Create new payer and method
            $payer = new Payer();
            $payer->setPaymentMethod("paypal");

            // Set redirect URLs
            $redirectUrls = new RedirectUrls();
            $redirectUrls->setReturnUrl(\config('paypal.paypal.return'))
              ->setCancelUrl(\config('paypal.paypal.calcelUrl'));

            // Set payment amount
            $amount = new Amount();
            $amount->setCurrency(\config('paypal.paypal.currency'))
              ->setTotal($request->get('amount'));

            // Set transaction object
            $transaction = new Transaction();
            $transaction->setAmount($amount)
              ->setDescription("Payment description");

            // Create the full payment object
            $payment = new Payment();
            $payment->setIntent('sale')
              ->setPayer($payer)
              ->setRedirectUrls($redirectUrls)
              ->setTransactions(array($transaction));

                            // Create payment with valid API context


                // Create payment with valid API context
                try {
                    $payment->create($apiContext);

                    // Get PayPal redirect URL and redirect the customer
                    $approvalUrl = $payment->getApprovalLink();

                    //explode the url
                    $approvalUrlExplode = \explode('?',$approvalUrl);
                    $approvalUrlExplodeAgain = \explode('&',$approvalUrlExplode[1]);
                    $getTheCmd = \explode('=',$approvalUrlExplodeAgain[0]);
                    $getTheToken = \explode('=',$approvalUrlExplodeAgain[1]);
                    //echo "Token is = $getTheToken[1], the cmd is = $getTheCmd[1]";
                    //insert the data into database
                    $thePaymentRecordSave = new paypalPaymentModel([
                        'awb' => $request->get('item_name'),
                        'paymentToken' => $getTheToken[1],
                        'paymentCommand' => $getTheCmd[1],
                        'paymentMerchant' => 'paypal',
                        'paymentAmount' => $request->get('amount'),
                        'currency' => \config('paypal.paypal.currency')
                    ]);
                    $thePaymentRecordSave->save();

                    echo "<script>window.location.href='$approvalUrl';</script>";

                    // Redirect the customer to $approvalUrl
                } catch (PayPal\Exception\PayPalConnectionException $ex) {
                    echo $ex->getCode();
                    echo $ex->getData();
                    die($ex);
                } catch (Exception $ex) {
                    die($ex);
                }



        }



        public function paymentPaypalSuccess(Request $request){
            //confirm the payment token
            $payToken = $request->get('token');
           $tokenConf = DB::select('select * from paymentrequest where paymentToken = ?', [$payToken]);
           $theUserdata = $tokenConf[0];
           if(\count($tokenConf) === 0){
               flash(__('message.paymenrError'))->error();
               return redirect()->route('index')->with('message',__('message.paymenrError'));
           }else{
            //save the important data to the database

            $paymentReqSave = new paymentRecord([
                'awb' => $theUserdata->awb,
                'paymentMerchant' => $theUserdata->paymentToken,
                'paymentStatus' => 'success',
                'paymentToken' => $request->get('token'),
                'paymentId' => $request->get('paymentId'),
                'payerId' => $request->get('PayerID'),
                'extraInfo' => ''
            ]);
            $paymentReqSave->save();
            flash(__('message.paymentSuc'))->success();
            DB::update('update usersteps set stepsComplete = ? where awbNumber = ?', [7,$theUserdata->awb]);
            return redirect()->route('index')->with('message',__('message.paymentSuc'));
           }
        }
}
