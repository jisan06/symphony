@extends('admin.layouts.master')

@section('content')

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Manage Users Role</h4>
                <a href="{{ route('userRoleAdd.page') }}" type="submit" class="btn btn-info" style="float: right;">Add new</a>

                <div class="table-responsive">
                     <?php
                    $message = Session::get('msg');
                      if (isset($message)) {
                        echo"<div style='display:inline-block;width: auto;' class='alert alert-success'><strong>" .$message."</strong></div>";
                      }

                      Session::forget('msg');
                  
                ?>
                    <table id="usersTable" class="table table-bordered table-striped datatable"  name="usersTable">
                        <thead>
                            <tr>
                                <th width="10px">SL</th>
                                <th>Role Name</th>
                                <th width="10px">status</th>
                                <th width="40px">Action</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">
                            <?php $i=0; ?>
                        	@foreach($userRoles as $role)
                        	@if(Auth::user()->role == $role->id || Auth::user()->role == '2' || Auth::user()->role == '3')
                            <tr class="user{{$role->id}}">
                                <td>{{ $i++ }}</td>
                                <td>{{ $role->name }}</td>
                                <td>
                                    <?php echo \App\Link::status($role->id,$role->status)?>
                                </td>
                                <td class="text-nowrap">
                                <?php echo \App\Link::action($role->id)?>
                                </td>
                            </tr>
                            @endif
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

    <script>
        $(document).ready(function() {
            var updateThis ;
        
            //ajax delete code
            $('#usersTable tbody').on( 'click', 'i.fa-trash', function () {
                $.ajaxSetup({
                  headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
                });

                userRole_id = $(this).parent().data('id');
                var user = this;
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
                            type: "DELETE",
                            // url: "{!! url('categories' ) !!}" + "/" + userRole_id,
                            url: "{{ route('user-roles.index') }}" + "/" + userRole_id,
                            // data: "userRole_id=" + userRole_id,
                            dataType: "JSON",
                            data: {
                                id:userRole_id
                            },
                            cache:false,
                            contentType: false,
                            processData: false,
                            success: function(response) {
                                swal({
                                    title: "<small class='text-success'>Success!</small>", 
                                    type: "success",
                                    text: "User Roll Deleted Successfully!",
                                    timer: 1000,
                                    html: true,
                                });
                                table
                                    .row( $(user).parents('tr'))
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
                            text: "Your date is safe :)",
                            timer: 1000,
                            html: true,
                        });    
                    } 
                });
            }); 

        });
                
        //ajax status change code
        function statusChange(userRole_id) {
            $.ajax({
                    type: "GET",
                    url: "{{ route('userRole.changeuserRoleStatus', 0) }}",
                    data: "userRole_id=" + userRole_id,
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