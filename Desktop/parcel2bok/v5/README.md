<!--start-->
<h1>The parcel to book</h1>

<h1>Requirements</h1>
<ol>
    <li>php V = 7.2.X</li>
    <li>Composer V = 1.0.2</li>
    <li>Node.js V = 12.X.X</li>
    <li>NPM V = 3.0.1 </li>
</ol>
<h1>Installation</h1>
<ol>
    <li>Edit <code> .env </code> with important  database configuration </li>
    <li>Run <code>npm install</code></li>
    <li>Run <code>composer install || php composer.phar install</code></li>
    <li>Run <code>php artisan migrate</code></li>
    <li>Run <code>npm install dev</code></li>
    <li>Run <code>php artisan admin:install</code> to install the important direectories and variables</li>
    <li>Edit <code>.env</code> file with important varable values</li>
    <li>Run <code>php artisan serve</code> and serve the <code>http://127.0.0.1:5000</code> </li>
</ol>
<h1>Important Notice</h1>
this website is multilingual and by default is <code>en</code> to change the language go to the <code>resources/lang</code> and make the folder on your desire and change the all the files array from <code>resources/lang/en</code> into you desire lang folder and then change the <code>resources/views/layouts/app</code> 's  html tag from <code>lang="en"</code> and replace the amy lanuguage of your own.
<br>
Note: if you are using <code> php version < 7.x.x </code> so there is no mcrypt extension available please install and enable it into the php.ini file 


<!---->
