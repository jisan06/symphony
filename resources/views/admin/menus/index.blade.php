@extends('admin.layouts.master')

@section('content')
<?php
    use App\Menu;
?>
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <?php
                    $message = Session::get('msg');
                      if (isset($message)) {
                        echo"<div style='display:inline-block;width: auto;' class='alert alert-success'><strong>" .$message."</strong></div>";
                      }

                      Session::forget('msg')
                ?>
                <h4 class="card-title">{{@$title}}</h4>
                
                <a href="{{ route($addNewLink) }}" class="btn btn-info" style="float: right;"><i class="fa fa-plus"></i> Add New</a>
                </a>
                <div class="table-responsive">
                    <table id="menusTable" class="table table-bordered table-striped datatable"  name="menusTable">
                        <thead>
                            <tr>
                                <th width="5%">SL</th>
                                <th width="25%">Menu Name</th>
                                <th width="25%">Parent</th>
                                <th>Title</th>
                                <th width="5%">Status</th>
                                <th width="7%">Action</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">
                            <?php $i=0; ?>
                        	@foreach($menus as $menu)    
                            <?php $i++;
                                $parent = Menu::where('id',$menu->parent)->first();
                             ?>                    	
                        	<tr class="row_{{$menu->id}}">
                                <td>{{ $i }}</td>
                                <td>{{ $menu->menuName }}</td>
                                <td>{{ @$parent->menuName }}</td>
                                <td>{{ $menu->menuTitle }}</td>
                                 <td>
                                    <?php echo \App\Link::status($menu->id,$menu->menuStatus)?>
                                </td>
                                <td class="text-nowrap">
                                <?php echo \App\Link::action($menu->id)?>
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
<!-- ============================================================== -->
<!-- End PAge Content -->
<!-- ============================================================== -->

<!-- sample modal content for show menu-->
<div id="showmenu" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel1">Show menu</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <div class="container" id="showContent"  style="max-height: 80vh; overflow-y: scroll;">
                </div>
            </div>
        </div>
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->



@endsection

@section('custom-js')

    <!-- This is data table -->
    <script src="{{ asset('/public/admin-elite/assets/node_modules/datatables/jquery.dataTables.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            var updateThis ;

            //ajax show code
            $('#menusTable tbody').on( 'click', 'i.fa-eye', function () { 
                updateThis = this;
                menu_id = $(this).parent().data('id');
                $.ajax({
                    type: "GET",
                    url: "{{ route('menu.index') }}" + "/" + menu_id + "/edit",
                    data: "menu_id=" + menu_id,
                    cache:false,
                    contentType: false,
                    processData: false,
                    success: function(response) {                        
                        menu = response.menu;
                        showFunction(menu);
                    },
                    error: function(response) {
                        error = "Something wrong.";
                        swal({
                            title: "<small class='text-danger'>Error!</small>", 
                            type: "error",
                            text: error,
                            timer: 1000,
                            html: true,
                        });
                    }
                });              
            });

            //ajax delete code
            $('#menusTable tbody').on( 'click', 'i.fa-trash', function () {
                $.ajaxSetup({
                  headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
                });

                menu_id = $(this).parent().data('id');
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
                            url: "{{ route('menu.destroy') }}",
                            data: {
                                menu_id:menu_id
                            },
                            success: function(response) {
                                swal({
                                    title: "<small class='text-success'>Success!</small>", 
                                    type: "success",
                                    text: "Menu deleted Successfully!",
                                    timer: 1000,
                                    html: true,
                                });
                                $('.row_'+menu_id).remove();
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
                    url: "{{ route('menu.changeStatus', 0) }}",
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

    </script>
@endsection