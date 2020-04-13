<?php

namespace App\Admin\Controllers;
use App\AdminTotalUserModelCtrl;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

use Illuminate\Http\Request;

use Encore\Admin\Widgets\Table;
use DB;
use App\AdminUserParcelUpdateModel;
use Carbon\Carbon;

use App\parcelStatusRegulate;
class AdminTotalUserController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\AdminTotalUserModelCtrl';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new AdminTotalUserModelCtrl());
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail(Content $content)
    {


    return $content->title('List of user')->description('List of all user.')->view('admin.userList');

    }

    /**
     * Make a form builder.
     *
     * @return Form
     */

    protected function singleParcel(Content $content){
        //here we will get all the generated awb
        $allTheAwb = DB::table('usersteps')->where('isMultipleParcel', '=', 'N')->paginate(10);

        if(count($allTheAwb) === 0){
            return $content->title('Single parcel')->description('There are no such users');
        }else{

            return $content->title('Single parcel')->description('List of user With single handed parcel')->view('admin.users.single',['list' => $allTheAwb]);
        }
    }

    Protected function multipleParcel(Content $content){
        $allTheAwb = DB::table('usersteps')->where('isMultipleParcel', '=', 'Y')->paginate(10);

         if(count($allTheAwb) === 0){
             return $content->title('Multiple parcel')->description('There are no such users');
         }else{
         return $content->title('Multiple parcel')->description('List of user With Multiple handed parcel')->view('admin.users.multiple',['list' => $allTheAwb]);
        return print_r($allTheAwb);
        }

    }




    //deleting the order by admin
     protected function delete(Content $content,$awb){
        //return $content->title('List All User | Delete')->description('Delete the user '.$awb);
        //deleting the user
        \flash('The user has been Cancelled successfully')->success();
        //DB::table('usersteps')->where(['awbNumber'=>$awb])->delete();
        DB::update('update usersteps set isMultipleParcel = ?,updated_at = ?  where awbNumber = ?', ['C',now()->toDateTimeString(),$awb]);
        return \redirect()->back();


     }

     //detail the user
     protected function detailuser(Content $content,$awb){
        //Complete detail of user



        $allTheuserInfo = DB::table('users')->select('*')->join('userprofile', 'userprofile.awb', '=', 'users.uniqNum')->join('userinfocontact', 'userinfocontact.awb','=','users.uniqNum')->join('userpickupanddrop', 'userpickupanddrop.awb','=','users.uniqNum')->join('parcelbook', 'parcelbook.awbNumber', '=', 'users.uniqNum')->where(['users.uniqNum' => $awb])->get();
        $parcelType = 'Single';

        if(count($allTheuserInfo) === 0){
            $allTheuserInfo = DB::table('usermultipleparcel')->select('*')->join('userprofile','userprofile.awb','=','usermultipleparcel.awb')->join('userinfocontact', 'userinfocontact.awb','=','usermultipleparcel.awb')->join('userpickupanddrop', 'userpickupanddrop.awb','=','usermultipleparcel.awb')->where(['usermultipleparcel.awb' => $awb])->get();
            $parcelType = 'Multiple';
        }
        return $content->title("Detail | $parcelType parcel")->description('Detail the user '.$awb)->view('admin.users.detail', ['user' => $allTheuserInfo]);
     }

     //update the delivery

     protected function delivery(Content $content,$awb){
         //confirm the awb is updated or not

         $confirmAwb = DB::select('select * from adminparcelupdatestatus where awb = ?', [$awb]);

         if(count($confirmAwb) > 0){
             flash('This is alredy updated please try another')->error();

             $awbType = DB::select('select isMultipleParcel from usersteps where awbNumber = ?', [$awb]);

             //print_r($awbType[0]->isMultipleParcel);
                if($awbType[0]->isMultipleParcel === 'Y'){
                    return redirect()->route('admin.listAllUser.multipleParcel');
                }else{
                    return redirect()->route('admin.listAllUser.singleParcel');
                }
         }

        return $content->title('List All User | Deliver')->description('Deliver the user '.$awb)->view('admin.users.deliver',\compact('awb'));
     }

     protected function deliveryPost(Request $request, $awb){
         //now we wwill validate the request


         $request->validate([
             'awb' => 'required',
             'parcelStatus' => 'required|string',
             'customNotice' => '',
         ]);

         $saveTheStatus = new AdminUserParcelUpdateModel([
             'awb' => $request->get('awb'),
             'action' => $request->get('parcelStatus'),
             'Notice' => $request->get('customNotice')
         ]);
         $saveTheStatus->save();
         
         $inserNew = new parcelStatusRegulate([
            'awb' => $request->get('awb'),
            'from' => 'NULL',
            'to' => 'NULL',
            'message'=> $request->get('parcelStatus').': '.$request->get('customNotice'),
            'By' => \Admin::user()->name,
            'userType' => \Admin::user()->username
        ]);
        $inserNew->save();
         flash('The user has been successfully update')->success();
         //route the delivery redirect
         //check the awb type
         return redirect()->back();
        //

     }

     //list of all updated user
     protected function updatedParcelStaus(Content $content){

        $theParcelStatus = DB::table('adminParcelUpdateStatus')->paginate('10');
        //print_r($theParcelStatus);
         return $content->title('Parcel Status')->description('This will show the parcel all status')->view('admin.users.status',\compact('theParcelStatus'));
     }

     protected function updatedParcelStatusPost(Content $content,$id){

        $theParcelStatus = DB::table('adminparcelupdatestatus')->where(['id' => $id])->get();

        //print_r($theParcelStatus);
         return $content->title('Parcel | status update')->description('Here we will update the parcel status')->view('admin.users.updateTheStatus',['det' => $theParcelStatus[0]]);
     }

     protected function updatedParcelstatusPostMethod(Request $request,$id){
        //now we wwill validate the request
        $request->validate([
            'awb' => 'required',
            'parcelStatus' => 'required|string',
            'customNotice' => '',
        ]);

       //update id
       //insert
       DB::update('update adminparcelupdatestatus set action = ?, Notice = ?, updated_at = ? where id = ?', [$request->get('parcelStatus'),$request->get('customNotice'),now()->toDateTimeString(),$id]);

       $inserNew = new parcelStatusRegulate([
           'awb' => $request->get('awb'),
           'from' => 'NULL',
           'to' => 'NULL',
           'message'=> $request->get('parcelStatus').': '.$request->get('customNotice'),
           'By' => \Admin::user()->name,
           'userType' => \Admin::user()->username
       ]);
       $inserNew->save();
        flash('The user has been successfully update')->success();
        return redirect()->route('admin.listAllUser.updatedStatus');


     }


     protected function deleteStatus($id){
         //delete the user

         DB::table('adminparcelupdatestatus')->where(['id'=>$id])->delete();
         flash('The user has been successfully deleted')->success();
         return redirect()->back();
     }

    protected function form()
    {
        $form = new Form(new AdminTotalUserModelCtrl());
        return $form;
    }
}
