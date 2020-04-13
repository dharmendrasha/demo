/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */
import $ from 'jquery';

require('./bootstrap');

window.Vue = require('vue');


//data tables
/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component('example-component', require('./components/ExampleComponent.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
//jquery ui
// const app = new Vue({
//     el: '#app',
// });
//tabs initialization

$(document).ready(function(){
    $('.dynamic').change(function(){
     if($(this).val() != ''){
      var select = $(this).attr("id");
      var value = $(this).val();
      var country = $('#fromCountry').val();
      var dependent = $(this).data('dependent');
      var _token = $('input[name="_token"]').val();
      $.ajax({
       url:"dynamic",
       method:"POST",
       data:{select:select, value:value, _token:_token, dependent:dependent, country:country},
       success:function(result){
        $('#'+dependent).html(result);
       }
      });
     }
    });
    $('#fromCountry').change(function(){
     $('#fromState').val();
    });
   });

   //dfdfd
   $(document).ready(function(){
    $('.newDy').change(function(){
     if($(this).val() != ''){
      var select = $(this).attr("id");
      var value = $(this).val();
      var country = $('#toCountry').val();
      var dependent = $(this).data('on');
      var _token = $('input[name="_token"]').val();
      $.ajax({
       url:"dynamic",
       method:"POST",
       data:{select:select, value:value, _token:_token, dependent:dependent, country:country},
       success:function(result){
        $('#'+dependent).html(result);
       }
      });
     }
    });
    $('#toCountry').change(function(){
     $('#toState').val();
    });
   });

   //profile
   $(document).ready(function() {
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('.avatar').attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        }
    };
    $(".file-upload").on('change', function(){
        readURL(this);
    });
});

require( 'datatables.net' )();
//data tables
$(document).ready( function () {
    $('#myTable').DataTable();
} );

//custom
