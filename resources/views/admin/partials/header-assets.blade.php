<!-- This page CSS -->
<!-- chartist CSS -->
<link href="{{ asset('/public/admin-elite/assets/node_modules/morrisjs/morris.css') }}" rel="stylesheet">

<link href="{{ asset('/public/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')  }}" rel="stylesheet">

<link href="{{ asset('/public/admin-elite/dist/css/chosen.css') }}" rel="stylesheet">

<link href="{{ asset('/public/admin-elite/dist/css/bootstrap.min.css') }}" rel="stylesheet">
<!--Toaster Popup message CSS -->
<link href="{{ asset('/public/admin-elite/assets/node_modules/toast-master/css/jquery.toast.css') }}" rel="stylesheet">
<!-- Custom CSS -->
{{-- <link href="{{ asset('/public/admin-elite/dist/css/style.min.css') }}" rel="stylesheet"> --}}
<link href="{{ asset('/public/admin-elite/dist/css/style.css') }}" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"><!-- Date Picker -->

<!--alerts CSS -->
<link href="{{ asset('/public/admin-elite/assets/node_modules/sweetalert/sweetalert.css') }}" rel="stylesheet" type="text/css">

<!--switchery switch CSS -->
<link href="{{ asset('/public/admin-elite/assets/node_modules/switchery/dist/switchery.min.css') }}" rel="stylesheet" />


<!-- summernotes CSS -->
<link href="{{ asset('/public/admin-elite/assets/node_modules/summernote/dist/summernote.css') }}" rel="stylesheet" />

<!-- tagsinput CSS -->
<link href="{{ asset('/public/admin-elite/assets/node_modules/bootstrap-tagsinput/dist/bootstrap-tagsinput.css') }}" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.10/css/select2.min.css" rel="stylesheet" />

@if(Auth::user()->role != '2')
    <style>
        .user2{
            display:none;
        }
    </style>
 @endif