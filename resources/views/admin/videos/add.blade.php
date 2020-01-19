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
         <a class="btn btn-info"  href="{{ route($goBackLink) }}"><i class="fa fa-arrow-left"></i> Go Back</a>
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
                            
                            <form class="form-horizontal" action="{{ route('videos.add') }}" method="POST" enctype="multipart/form-data" id="newProduct" name="newProduct">
                            {{ csrf_field() }}

                            @if( count($errors) > 0 )
                                
                            <div style="display:inline-block;width: auto;" class="alert alert-danger">{{ $errors->first() }}</div>
                            
                        @endif
                            <div class="modal-body">
                                <div class="form-group row {{ $errors->has('title1') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Title 1</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control form-control-danger" placeholder="first title" name="title1" value="{{ old('title1') }}">
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
                                        <input type="text" class="form-control form-control-danger" placeholder="second title" name="title2" value="{{ old('title2') }}">
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
                                        <input type="text" class="form-control form-control-danger" placeholder="Write your video link" name="video_link" value="{{ old('video_link') }}" required>
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
                                        <input type="text" class="form-control form-control-danger" placeholder="Meta Title" name="metaTitle" value="{{ old('metaTitle') }}">
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
                                        <input type="text" class="form-control form-control-danger" placeholder="Meta Keyword" name="metaKeyword" value="{{ old('metaKeyword') }}">
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
                                        <textarea style="min-height: 100px;" class="form-control" name="metaDescription">{{ old('metaDescription') }}</textarea>
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
                                        <input type="number"   name="orderBy" value="{{ old('orderBy') }}" required>
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
                                    <button type="submit" class="btn btn-info waves-effect"><i class="fa fa-save"></i> SAVE</button> 
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

