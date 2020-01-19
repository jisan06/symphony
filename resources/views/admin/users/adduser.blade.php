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
         <a class="btn btn-info"  href="{{ route('users.index') }}">Go Back</a> 
         
    </span>
            <div class="card-body">
                <?php
                    $message = Session::get('msg');
                      if (isset($message)) {
                        echo"<div style='display:inline-block;width: auto;' class='alert alert-success'><strong>" .$message."</strong></div>";
                      }

                      Session::forget('msg')
                  
                ?>
                <h4 class="card-title">Add New User</h4>

                  <div id="addNewProduct" class="">
    <div class="">        
        <div class="">
            
            <form class="form-horizontal" action="{{ route('user.save') }}" method="POST" enctype="multipart/form-data" id="newProduct" name="newProduct">
            {{ csrf_field() }}

            @if( count($errors) > 0 )
                
            <div style="display:inline-block;width: auto;" class="alert alert-danger">{{ $errors->first() }}</div>
            
        @endif
            <div class="modal-body">
                 <div class="col-md-12 m-b-20 text-right">    
                    <button type="submit" class="btn btn-info waves-effect">Save</button> 
                </div>
                <br>

                <div class="form-group row {{ $errors->has('parent') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Select Role</label>
                    <div class="col-sm-9">
                        <select class="form-control" name="role" required>
                            <option value=""> Select Role</option>
                            @foreach($userRoles as $role)
                                <option value="{{$role->id}}">{{$role->name}}</option>
                            @endforeach
                        </select>
                        @if ($errors->has('parent'))
                        @foreach($errors->get('parent') as $error)
                        <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                        @endif
                    </div>
                </div>
                
                <div class="form-group row {{ $errors->has('name') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Name</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control form-control-danger" placeholder="Name" name="name" value="{{ old('name') }}" required>
                        @if ($errors->has('name'))
                        @foreach($errors->get('name') as $error)
                        <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                        @endif
                    </div>
                </div>

                <div class="form-group row {{ $errors->has('email') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" class="form-control form-control-danger" placeholder="Email" name="email" value="{{ old('email') }}" required>
                        @if ($errors->has('email'))
                        @foreach($errors->get('email') as $error)
                        <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                        @endif
                    </div>
                </div>

                <div class="form-group row {{ $errors->has('username') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">User Name</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control form-control-danger" placeholder="User Name" name="username" value="{{ old('username') }}" required>
                        @if ($errors->has('username'))
                        @foreach($errors->get('username') as $error)
                        <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                        @endif
                    </div>
                </div>

                <div class="form-group row {{ $errors->has('password') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control form-control-danger" placeholder="Password" name="password" value="" required>
                        @if ($errors->has('password'))
                        @foreach($errors->get('password') as $error)
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

@endsection


