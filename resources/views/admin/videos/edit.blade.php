@extends('admin.layouts.master')


@section('custom-css')
<meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->

<div class="row">
    <div class="col-12">
        <div class="card">
        <span class="shortlink">
         <a class="btn btn-info"  href="{{ route($goBackLink) }}"><i class="fa fa-arrow-left"></i> Go Back</a>
         <a class="btn btn-info" onclick="if (confirm(&quot;Are you sure you want Delete ?&quot;)) { return true; } return false;"  href="{{ route('videos.delete',$videos->id) }}"><i class="fa fa-trash"></i> Delete</a>
        </span>
            <div class="card-body">
               
                <?php
                    $message = Session::get('msg');
                      if (isset($message)) {
                        echo"<div style='display:inline-block;width: auto;' class='alert alert-success'><strong>" .$message."</strong></div>";
                      }

                      Session::forget('msg')
                  
                ?>
                <h4 class="card-title">{{$title}}</h4>

                <div id="addNewProduct" class="">
                    <div class="">        
                        <div class="">
                            
                            <form class="form-horizontal" action="{{ route('videos.update') }}" method="POST" enctype="multipart/form-data" name="form">
                            {{ csrf_field() }}

                            @if( count($errors) > 0 )
                                
                            <div style="display:inline-block;width: auto;" class="alert alert-danger">{{ $errors->first() }}</div>
                            
                        @endif
                            <div class="modal-body">
                                 <input type="hidden" name="videoId" value="{{$videos->id}}">

                                <div class="form-group row {{ $errors->has('title1') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Title 1</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control form-control-danger" placeholder="first title" name="title1" value="{{ $videos->title1 }}">
                                        @if ($errors->has('title1'))
                                        @foreach($errors->get('title1') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('title2') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Title 2</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control form-control-danger" placeholder="second title" name="title2" value="{{ $videos->title2 }}">
                                        @if ($errors->has('title2'))
                                        @foreach($errors->get('title2') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('video_link') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Video Link</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control form-control-danger" placeholder="Write your video link" name="video_link" value="{{ $videos->video_link }}" required>
                                        @if ($errors->has('video_link'))
                                        @foreach($errors->get('video_link') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('metaTitle') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Meta Title</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control form-control-danger" placeholder="Meta Title" name="metaTitle" value="{{ $videos->metaTitle }}">
                                        @if ($errors->has('metaTitle'))
                                        @foreach($errors->get('metaTitle') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('metaKeyword') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Meta keyword</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control form-control-danger" placeholder="Meta Keyword" name="metaKeyword" value="{{ $videos->metaKeyword }}">
                                        @if ($errors->has('metaKeyword'))
                                        @foreach($errors->get('metaKeyword') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('description') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Meta description</label>
                                    <div class="col-sm-7">
                                        <textarea style="min-height: 100px;" class="form-control" name="metaDescription">{{ $videos->metaDescription }}</textarea>
                                        @if ($errors->has('metaDescription'))
                                        @foreach($errors->get('metaDescription') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                 <div class="form-group row {{ $errors->has('orderBy') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Order By</label>
                                    <div class="col-sm-7">
                                        <input type="number"   name="orderBy" value="{{ $videos->orderBy }}" required>
                                        @if ($errors->has('orderBy'))
                                        @foreach($errors->get('orderBy') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>
                                
                                <div class="form-group row {{ $errors->has('status') ? ' has-danger' : '' }}">
                                    <label class="col-sm-3 col-form-label">Publication status</label>
                                    <div class="col-sm-7 row">
                                        <div class="form-control">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="published" name="status" class="custom-control-input" value="1" required>
                                                <label class="custom-control-label" for="published">Published</label>
                                            </div>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="unpublished" name="status" class="custom-control-input" checked="" value="0">
                                                <label class="custom-control-label" for="unpublished">Unpublished</label>
                                            </div>
                                        </div>                            
                                    </div>
                                </div>

                                <div class="col-md-10 m-b-20 text-right">    
                                    <button type="submit" class="btn btn-info waves-effect"><i class="fa fa-save"></i> UPDATE</button> 
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
        document.forms['form'].elements['status'].value = "{{$videos->status}}";
</script>

@endsection


