@extends('admin.layouts.master')

@section('content')

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Manage Users</h4>
                <a href="{{ route('useradd.page') }}" type="submit" class="btn btn-info" style="float: right;">Add new</a>

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
                                <th>User Name</th>
                                <th>Email</th>
                                <th>status</th>
                                <th width="30px">Action</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">
                            @php
                                $i = 0;
                            @endphp
                        	@foreach($users as $user)
                        	@if(Auth::user()->id == $user->id || Auth::user()->role == '2' || Auth::user()->role == '3')
                        	<tr class="user{{$user->role}} row_{{$user->id}}">
                                <td>{{ $i++ }}</td>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>
                                    <?php echo \App\Link::status($user->id,$user->status)?>
                                </td>
                                <td class="text-nowrap">
                                <?php echo \App\Link::action($user->id)?>
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
<!-- ============================================================== -->
<!-- End PAge Content -->
<!-- ============================================================== -->


<!-- sample modal content for show category-->
<div id="showCategory" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel1">Show Category</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <div class="container" id="showContent">
                </div>
            </div>
        </div>
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


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

                user_id = $(this).parent().data('id');
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
                            // url: "{!! url('categories' ) !!}" + "/" + user_id,
                            url: "{{ route('users.index') }}" + "/" + user_id,
                            // data: "user_id=" + user_id,
                            dataType: "JSON",
                            data: {
                                id:user_id
                            },
                            cache:false,
                            contentType: false,
                            processData: false,
                            success: function(response) {
                                swal({
                                    title: "<small class='text-success'>Success!</small>", 
                                    type: "success",
                                    text: "user deleted Successfully!",
                                    timer: 1000,
                                    html: true,
                                });
                                    $('.row_'+user_id).remove();
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
                            text: "Your data is safe :)",
                            timer: 1000,
                            html: true,
                        });    
                    } 
                });
            }); 

        });
                
        //ajax status change code
        function statusChange(user_id) {
            $.ajax({
                    type: "GET",
                    url: "{{ route('user.changeuserStatus', 0) }}",
                    data: "user_id=" + user_id,
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