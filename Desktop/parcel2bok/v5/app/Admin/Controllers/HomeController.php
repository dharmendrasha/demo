<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use DB;
class HomeController extends Controller
{
    public function index(Content $content)
    {   //get all the user from the database

        //single parcel

        $single = DB::table('usersteps')->where(['isMultipleParcel' => 'N'])->get('isMultipleParcel');
        $totalSingle = count($single);
        $multiple = DB::table('usersteps')->where(['isMultipleParcel' => 'Y'])->get('isMultipleParcel');
        $totalMultiple = count($multiple);
        return $content->title('Dashboard')->description('this will show the information of all users')->view('Admin\dashboard\index',['sCustomer' => $totalSingle,'mCustomer' => $totalMultiple]);
       
    }


    //new index

    protected function newIndex(Content $content){
        return $content
             ->title('DashBoard')
             ->description('Description...')
             ->row(Dashboard::title())
             ->row(function (Row $row) {
                 $row->column(4, function (Column $column) {
                     $column->append(Dashboard::environment());
                 });

                 $row->column(4, function (Column $column) {
                     $column->append(Dashboard::extensions());
                 });
                $row->column(4, function (Column $column) {
                     $column->append(Dashboard::dependencies());
                 });
             });

    }
}
