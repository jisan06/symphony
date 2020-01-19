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
<?php
    use App\UserRoles;
    use App\UserMenuActions;
?>

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
                <h4 class="card-title">User Permission</h4>
                    <input type="checkbox" class="select_all" name="select_all"> Select All
                  <div id="addNewProduct" class="">
    <div class="">        
        <div class="">
            
            <form class="form-horizontal" action="{{ route('userRole.permissionUpdate') }}" method="POST" enctype="multipart/form-data" id="editUser" name="editUser">
            {{ csrf_field() }}

            @if( count($errors) > 0 )
                
            <div style="display:inline-block;width: auto;" class="alert alert-danger">{{ $errors->first() }}</div>
            
        @endif
            <div class="modal-body">
                <input type="hidden" name="userroleId" value="{{$userRoles->id}}">
                <div class="row">
                    <?php
                        foreach ($userMenus as $menu) {
                            $userMenuAction = UserMenuActions::where('actionStatus',1)->orderBy('orderBy','ASC')->where('parentmenuId',$menu->id)->get();
                            $rolePermission = explode(',', $userRoles->permission);
                                if (in_array($menu->id, $rolePermission)) {
                                   $checked = "checked";
                                }else{
                                   $checked = ""; 
                                }
                    ?>
                    <div class="col-md-2" style="margin-bottom: 12px;">
                        <input class="parentMenu_{{$menu->parentMenu}} menu" type="checkbox" name="usermenu[]" value="{{$menu->id}}" {{$checked}}  data-id="{{$menu->id}}"> <span>{{$menu->menuName}}</span>
                        <div style="margin-left: 26px;margin-top: 3px;">
                            <?php foreach ($userMenuAction as $action){
                                $actionPermission = explode(',', $userRoles->actionPermission);
                                if (in_array($action->id, $actionPermission)) {
                                   $actionChecked = "checked";
                                }else{
                                   $actionChecked = ""; 
                                }
                             ?>
                                <input class="childMenu_{{$action->parentmenuId}}" type="checkbox" name="usermenuAction[]" value="{{$action->id}}" style="margin-bottom: 8px;" {{$actionChecked}}> {{$action->actionName}} <br>
                            <?php } ?>
                            
                        </div>
                    </div>
                <?php } ?>
                </div>
            </div>

            <br>
            <br>

            <div class="row">
                <div class="col-md-12 m-b-20 text-right">    
                    <button type="submit" class="btn btn-info waves-effect">Update</button> 
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
<script src="{{ asset('/public/admin-elite/assets/node_modules/jquery/jquery-3.2.1.min.js') }}"></script>
 <script type="text/javascript">
   $(document).ready(function(){
        $('.select_all').click(function(event) {   
            if(this.checked) {
                // Iterate each checkbox
                $(':checkbox').each(function() {
                    this.checked = true;                        
                });
            } else {
                $(':checkbox').each(function() {
                    this.checked = false;                       
                });
            }
        });

        $('.menu').click(function(event) {
            var menuId = $(this).data('id');
            if(this.checked) {
                $('.parentMenu_'+menuId).each(function() {
                    this.checked = true; 

                });

                $('.childMenu_'+menuId).each(function() {
                    this.checked = true; 

                });
            }else{
              $('.parentMenu_'+menuId).each(function() {
                    this.checked = false; 
                });

              $('.childMenu_'+menuId).each(function() {
                    this.checked = false; 

                });
            }
         });

    });

    document.forms['editUser'].elements['role'].value = "{{$userRoles->role}}";
    
</script>

@endsection


