@extends('admin.layouts.master')

@section('custom-css')
<meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('content')

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">{{$title}}</h4>
               
                <a href="{{ route($addNewLink) }}" class="btn btn-info" style="float: right;"><i class="fa fa-plus"></i> Add New</a>

                <div class="table-responsive">
                   <?php
                    $message = Session::get('msg');
                      if (isset($message)) {
                        echo"<span style='display:inline-block;width: auto;' class='alert alert-success'><strong>" .$message."</strong></span>";
                      }

                      Session::forget('msg');
                  
                ?>
                    <table id="companyTable" class="table table-bordered table-striped datatable"  name="companyTable">
                        <thead>
                            <tr>
                                <th width="5%">SL</th>
                                <th>Name</th>
                                <th width="5%">Status</th>
                                <th width="5%">Action</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">
                            <?php $i = 0; ?>
                        	@foreach($teamCategories as $team)
                            <?php $i++; ?>                        	
                        	<tr class="row_{{$team->id}}">
                                <td>{{ $i }}</td>
                                 <td>{{ $team->name }}</td>
                                 <td>
                                    <?php echo \App\Link::status($team->id,$team->status)?>
                                </td>
                                <td class="text-nowrap">
                                <?php echo \App\Link::action($team->id)?>
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


@endsection

@section('custom-js')

    <script>
        $(document).ready(function() {
            var updateThis ;

            //ajax delete code
            $('#companyTable tbody').on( 'click', 'i.fa-trash', function () {
                $.ajaxSetup({
                  headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
                });

                teamCategoryId = $(this).parent().data('id');
                var tableRow = this;
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
                           url : "{{ route('teamCategory.delete',0) }}",
                            data : {teamCategoryId:teamCategoryId},
                            success: function(response) {
                                swal({
                                    title: "<small class='text-success'>Success!</small>", 
                                    type: "success",
                                    text: "Team Category Successfully!",
                                    timer: 1000,
                                    html: true,
                                });
                                $('.row_'+teamCategoryId).remove();
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
                            text: "Your team is safe :)",
                            timer: 1000,
                            html: true,
                        });    
                    } 
                });
            }); 

        });
                
        //ajax status change code
        function statusChange(teamCategoryId) {
            $.ajax({
                    type: "GET",
                    url: "{{ route('teamCategory.status', 0) }}",
                    data: "teamCategoryId=" + teamCategoryId,
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


