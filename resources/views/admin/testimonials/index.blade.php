@extends('admin.layouts.master')

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
                                <th>Description</th>
                                <th width="5%">Status</th>
                                <th width="5%">Action</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">
                            <?php $i = 0; ?>
                        	@foreach($testimonials as $testimonial)
                            <?php $i++; ?>                        	
                        	<tr class="row_{{$testimonial->id}}">
                                <td>{{ $i }}</td>
                                <td>{{$testimonial->name}}</td>
                                 <td><?php echo str_limit($testimonial->description,120) ?></td>
                                 <td>
                                    <?php echo \App\Link::status($testimonial->id,$testimonial->status)?>
                                </td>
                                <td class="text-nowrap">
                                <?php echo \App\Link::action($testimonial->id)?>
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

                testimonialId = $(this).parent().data('id');
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
                           url : "{{ route('testimonial.delete',0) }}",
                            data : {testimonialId:testimonialId},
                            success: function(response) {
                                swal({
                                    title: "<small class='text-success'>Success!</small>", 
                                    type: "success",
                                    text: "Testimonial Deleted Successfully!",
                                    timer: 1000,
                                    html: true,
                                });
                                $('.row_'+testimonialId).remove();
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
                            text: "Your Testimonial is safe :)",
                            timer: 1000,
                            html: true,
                        });    
                    } 
                });
            }); 

        });
                
        //ajax status change code
        function statusChange(testimonialId) {
            $.ajax({
                    type: "GET",
                    url: "{{ route('testimonial.status', 0) }}",
                    data: "testimonialId=" + testimonialId,
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


