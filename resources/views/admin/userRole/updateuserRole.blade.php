@extends('admin.layouts.master')

@section('title')
Admin
@endsection

@section('custom-css')
<meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('page-name')
Add Category
@endsection

@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->

<div class="row">
    <div class="col-12">
        <div class="card">
    <span class="shortlink">
         <a class="btn btn-info"  href="{{ route('user-roles.index') }}">Go Back</a> 
         
    </span>
            <div class="card-body">
                <?php
                    $message = Session::get('msg');
                      if (isset($message)) {
                        echo"<div style='display:inline-block;width: auto;' class='alert alert-success'><strong>" .$message."</strong></div>";
                      }

                      Session::forget('msg')
                  
                ?>
                <h4 class="card-title">Edit User</h4>

                  <div id="addNewProduct" class="">
    <div class="">        
        <div class="">
            
            <form class="form-horizontal" action="{{ route('userRole.update') }}" method="POST" enctype="multipart/form-data" id="editUser" name="editUser">
            {{ csrf_field() }}

            @if( count($errors) > 0 )
                
            <div style="display:inline-block;width: auto;" class="alert alert-danger">{{ $errors->first() }}</div>
            
        @endif
            <div class="modal-body">
                 <div class="col-md-12 m-b-20 text-right">    
                    <button type="submit" class="btn btn-info waves-effect">Save</button> 
                </div>
                <br>

                <input type="hidden" name="userroleId" value="{{$userRoles->id}}">

                <div class="form-group row {{ $errors->has('name') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Name</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control form-control-danger" placeholder="Name" name="name" value="{{ $userRoles->name }}" required>
                        @if ($errors->has('name'))
                        @foreach($errors->get('name') as $error)
                        <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                        @endif
                    </div>
                </div>

                
               
            </div>                
            </form>
        </div>
    </div>
    <!-- /.modal-dialog -->
</div>
                
            </div>
        </div>
    </div>
</div>

 <script type="text/javascript">
   
        document.forms['editUser'].elements['role'].value = "{{$userRoles->role}}";
       

        
    </script>

@endsection


