@extends('admin.layouts.master')

@section('title')
Admin
@endsection

@section('custom-css')
<meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

<?php
    use App\UserMenu;
?>

@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <a href="{{ route('usermenu.index') }}" type="submit" class="btn btn-info"  style="float: right;">Go Back
                </a>
                <br>

                <?php
                    $message = Session::get('msg');
                      if (isset($message)) {
                        echo"<div style='display:inline-block;width: auto;' class='alert alert-success'><strong>" .$message."</strong></div>";
                      }

                      Session::forget('msg')
                  
                ?>
                <h4 class="card-title">User Menu Action Link</h4>
                
                <a href="{{ route('userMenu.ActionLinkAdd',$menuId) }}" class="btn btn-info"  style="float: right;">Add new
                </a>
                <div class="table-responsive">
                    <table id="menusTable" class="table table-bordered table-striped datatable"  name="menusTable">
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>Name</th>
                                <th>Parent</th>
                                <th>Link</th>
                                <th>Order</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">
                            <?php $i=0; ?>
                        	@foreach($menus as $menu)
                            <?php
                                $i++;
                                $parentMenu = UserMenu::where('id',$menu->parentmenuId)->first();
                            ?>                       	
                        	<tr>
                                <td>{{ $i }}</td>
                                <td>{{ $menu->actionName }}</td>
                                <td>{{ $parentMenu->menuName }}</td>
                                <td>{{ $menu->actionLink }}</td>
                                <td>{{ $menu->orderBy }}</td>
                                <td>
                                    <span class="switchery-demo m-b-30" onclick="statusChange({{ $menu->id }})">
                                    <input type="checkbox" {{ $menu->actionStatus ? 'checked':'' }} class="js-switch" data-color="#00c292" data-switchery="true" style="display: none;" >
                                    </span>
                                </td>
                                <td class="text-nowrap">
                                    <a href="{{ route('userMenu.ActionLinkEdit',['parentMenu'=>$menuId,'actionMenuId'=>$menu->id]) }}" data-toggle="tooltip" data-original-title="Edit" data-id="{{ $menu->id }}"> <i class="fa fa-pencil text-inverse m-r-10"></i> </a>

                                    <a href="javascript:void(0)" data-toggle="tooltip" data-original-title="Delete" data-id="{{$menu->id}}"  data-token="{{ csrf_token() }}"> <i class="fa fa-trash text-danger"></i> </a>
                                </td>
                            </tr>
                        	@endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection

@section('custom-js')

    <!-- This is data table -->
    <script src="{{ asset('/public/admin-elite/assets/node_modules/datatables/jquery.dataTables.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            var updateThis ;           

            //ajax delete code
            $('#menusTable tbody').on( 'click', 'i.fa-trash', function () {
                $.ajaxSetup({
                  headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
                });

                usermenuId = $(this).parent().data('id');
                var menu = this;
                swal({   
                    title: "Are you sure?",   
                    text: "You will not be able to recover this imaginary file!",   
                    type: "warning",   
                    showCancelButton: true,   
                    confirmButtonColor: "#DD6B55",   
                    confirmButtonText: "Yes, delete it!",   
                    cancelButtonText: "No, cancel plx!",   
                    closeOnConfirm: false,   
                    closeOnCancel: false 
                }, function(isConfirm){   
                    if (isConfirm) {     
                       $.ajax({
                            type: "POST",
                           url : "{{ route('usermenuAction.delete') }}",
                            data : {usermenuId:usermenuId},
                           
                            success: function(response) {
                                swal({
                                    title: "<small class='text-success'>Success!</small>", 
                                    type: "success",
                                    text: "Menu Deleted Successfully!",
                                    timer: 1000,
                                    html: true,
                                });
                                table
                                    .row( $(menu).parents('tr'))
                                    .remove()
                                    .draw();
                            },
                            error: function(response) {
                                error = "Failed.";
                                swal({
                                    title: "<small class='text-danger'>Error!</small>", 
                                    type: "error",
                                    text: error,
                                    timer: 1000,
                                    html: true,
                                });
                            }
                        });    
                    } else { 
                        swal({
                            title: "Cancelled", 
                            type: "error",
                            text: "Your menu is safe :)",
                            timer: 1000,
                            html: true,
                        });    
                    } 
                });
            }); 

        });
                
        //ajax status change code
        function statusChange(menu_id) {
            $.ajax({
                    type: "GET",
                    url: "{{ route('usermenuAction.status', 0) }}",
                    data: "menu_id=" + menu_id,
                    cache:false,
                    contentType: false,
                    processData: false,
                    success: function(response) {
                        swal({
                            title: "<small class='text-success'>Success!</small>", 
                            type: "success",
                            text: "Status successfully updated!",
                            timer: 1000,
                            html: true,
                        });
                    },
                    error: function(response) {
                        error = "Failed.";
                        swal({
                            title: "<small class='text-danger'>Error!</small>", 
                            type: "error",
                            text: error,
                            timer: 2000,
                            html: true,
                        });
                    }
                });
            }

            function summernote(){
                $('.summernote').summernote({
                    height: 200, // set editor height
                    minHeight: null, // set minimum height of editor
                    maxHeight: null, // set maximum height of editor
                    focus: false // set focus to editable area after initializing summernote
                });
            }
    </script>
@endsection