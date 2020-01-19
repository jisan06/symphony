@extends('admin.layouts.master')

@section('content')
<?php
    use App\Article;
?>
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
                    <table id="articles" class="table table-bordered table-striped datatable"  name="articles">
                        <thead>
                            <tr>
                                <th width="5%">SL</th>
                                <th>Name</th>
                                <th width="18%">Product</th>
                                <th width="12%">Home Image</th>
                                <th width="12%">Inner Image</th>
                                <th width="5%">Status</th>
                                <th width="5%">Action</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">
                            <?php $i = 0; ?>
                        	@foreach($articles as $article)
                            <?php $i++;
                                $parentArticle = Article::where('id',$article->parentArticle)->first();
                                if(@$parentArticle){
                                    $parentArticleName = $parentArticle->articleName;
                                }else{
                                    $parentArticleName = '';
                                }
                            ?>                        	
                        	<tr class="row_{{$article->id}}">
                                <td>{{ $i }}</td>
                                 <td>{{$article->firstHomeTitle}}</td>
                                 <td>{{$parentArticleName}}</td>
                                 <td>
                                     <?php if (file_exists(@$article->firstHomeImage)) { ?> 
                                        <img src="{{asset('/').@$article->firstHomeImage}}" style="height: 40px;">
                                    <?php }else{ ?>
                                        <img src="{{asset('/public/frontend/noImage.jpg')}}" style="height: 40px;">
                                    <?php } ?>
                                 </td>
                                 <td>
                                     <?php if (file_exists(@$article->firstInnerImage)) { ?> 
                                        <img src="{{asset('/').@$article->firstInnerImage}}" style="height: 40px;">
                                    <?php }else{ ?>
                                        <img src="{{asset('/public/frontend/noImage.jpg')}}" style="height: 40px;">
                                    <?php } ?>
                                 </td>
                                 <td>
                                    <?php echo \App\Link::status($article->id,$article->articleStatus)?>
                                </td>
                                <td class="text-nowrap">
                                <?php echo \App\Link::action($article->id)?>
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

    <!-- This is data table -->
    <script src="{{ asset('/public/admin-elite/assets/node_modules/datatables/jquery.dataTables.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            var updateThis ;

            //ajax delete code
            $('#articles tbody').on( 'click', 'i.fa-trash', function () {
                $.ajaxSetup({
                  headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
                });

                portfolioId = $(this).parent().data('id');
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
                            url : "{{ route('portfolio.delete',0) }}",
                            data : {portfolioId:portfolioId},
                            success: function(response) {
                                swal({
                                    title: "<small class='text-success'>Success!</small>", 
                                    type: "success",
                                    text: "Portfolio Deleted Successfully!",
                                    timer: 1000,
                                    html: true,
                                });
                                $('.row_'+portfolioId).remove();
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
                            text: "Your article is safe :)",
                            timer: 1000,
                            html: true,
                        });    
                    } 
                });
            }); 

        });
                
        //ajax status change code
        function statusChange(portfolioId) {
            $.ajax({
                    type: "GET",
                    url: "{{ route('portfolio.status', 0) }}",
                    data: "portfolioId=" + portfolioId,
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


