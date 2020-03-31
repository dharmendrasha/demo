<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Twocheckout;
use Twocheckout_Charge;

class twoCheckoutApi extends Controller
{
    public function __construct(){
       $this->middleware('auth');
    }

    public function paymentCreate(){
    Twocheckout::privateKey('A4DB3E86-6D79-4703-AAF9-88934F3187A9');
    Twocheckout::sellerId('901421427');
    Twocheckout::sandbox(true);
    
    try {
        // Charge a credit card
        $charge = Twocheckout_Charge::auth(array(
            "merchantOrderId" => 'SKA92712382139',





            
            "token"      => 'SOMETHINGAWS456',
            "currency"   => 'USD',
            "total"      => '456',
            "billingAddr" => array(
                "name" => 'Dharmendra shah',
                "addrLine1" => 'aadarsh colony',
                "city" => 'Bikaner',
                "state" => 'rajasthan',
                "zipCode" => '334001',
                "country" => 'india',
                "email" => 'dharm102@tapi.re',
                "phoneNumber" => '7597365803'
            )
        ));

       var_dump($charge);
        
        
    } catch (Twocheckout_Error $e) {
        $statusMsg = '<h2>Transaction failed!</h2>';
        $statusMsg .= '<p>'.$e->getMessage().'</p>';
    }
    }

    public function paymentCurl($Request, $host, $Debug = true){
        $host = 'https://api.avangate.com/rpc/5.0/';
                        $curl = curl_init($host);
                        curl_setopt($curl, CURLOPT_POST, 1);
                        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
                        curl_setopt($curl, CURLOPT_VERBOSE, true);
                        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0);
                        curl_setopt($curl, CURLOPT_SSLVERSION, 0);
                        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
                        curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-Type: application/json', 'Accept: application/json'));
                        $RequestString = json_encode($Request);
                        curl_setopt($curl, CURLOPT_POSTFIELDS, $RequestString);
                        if ($Debug) {
                            $RequestString;
                        }
                        $ResponseString = curl_exec($curl);
                        if ($Debug) {
                            $ResponseString;
                        }
                        if (!empty($ResponseString)) {
                            var_dump($ResponseString);
                            $Response = json_decode($ResponseString);
                            if (isset($Response->result)) {
                                return $Response->result;
                            }
                            if (!is_null($Response->error)) {
                                var_dump($Request->method, $Response->error);
                            }
                        } else {
                            return null;
                        }
                   
                    $merchantCode = "250320929706"; // your account's merchant code available in the 'System settings' area of the cPanel: https://secure.avangate.com/cpanel/account_settings.php
                    $key = "KpW6~Jug]ofO+)4Mzray"; // your account's secret key available in the 'System settings' area of the cPanel: https://secure.avangate.com/cpanel/account_settings.php
                    $string = strlen($merchantCode) . $merchantCode . strlen(gmdate('Y-m-d H:i:s')) . gmdate('Y-m-d H:i:s');
                    $hash = hash_hmac('md5', $string, $key);
                    $i = 1;
                    $jsonRpcRequest = new stdClass();
                    $jsonRpcRequest->jsonrpc = '2.0';
                    $jsonRpcRequest->method = 'login';
                    $jsonRpcRequest->params = array($merchantCode, gmdate('Y-m-d H:i:s'), $hash);
                    $jsonRpcRequest->id = $i++;
                    $sessionID = callRPC($jsonRpcRequest, $host);

                        }
                    }

