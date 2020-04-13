<?php
return[
    'paypal' => [
        'id' => env('PAYPAL_ID', 'dharm050@tapi.re'),
        'passwword' => env('PAYPAL_PASSWORD',''),
        'app' => env('PAYPAL_APP','parcel'),
        'account' => env('PAYPAL_ACCOUNT',''),
        'token' => env('PAYPAL_ACCESS_TOKEN',''),
        'clent' => env('PAYPAL_CLIENT_ID',''),
        'secret' => env('PAYPAL_SECRET',''),
        'webhook' => env('PAYPAL_WEBHOOK',''),
        'return' => env('PAYPAL_RETURN',''),
        'isSandbox' => env('PAYPAL_SANDBOX','TRUE'),
        'returnUrl' => env('PAYPAL_RETURN_URL', 'http://localhost/return'),
        'notifyUrl' => env('PAYPAL_NOTIFY_URL', 'HTTP://localhost/notify'),
        'calcelUrl' => env('PAYPAL_CANCEL_URL', 'http://localhost/CANCEL'),
        'currency' => env('PAYPAL_CURRENCY','INR'),
        'url' => env('PAYPAL_URL', 'https://www.paypal.com/cgi-bin/webscr'),
        'settings' => array(
            'mode' => env('PAYPAL_MODE','sandbox'),
            'http.ConnectionTimeOut' => 30,
            'log.LogEnabled' => true,
            'log.FileName' => storage_path() . '/logs/paypal.log',
            'log.LogLevel' => 'ERROR'
        )
        ],
        '2chekout' => [
            'publishedKey' => env('2CHECKOUT_PUBLISHED_KEY',''),
            'privateKey' => env('2CHECKOUT_PRIVATE_KEY',''),
            'secretWord' => env('2CHECKOUT_SECRET_WORD','')
        ]

];
