@extends('admin.layouts.master')

@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->

<div class="row">
    <div class="col-12">
        <div class="card">
        <span class="shortlink">
            <a class="btn btn-info" onclick="goBack()" ><i class="fa fa-arrow-left"></i> Go Back</a>
        </span>
            <div class="card-body">
               
                <?php
                    $message = Session::get('msg');
                      if (isset($message)) {
                        echo"<div style='display:inline-block;width: auto;' class='alert alert-success'><strong>" .$message."</strong></div>";
                      }

                      Session::forget('msg')
                  
                ?>
                <h4 class="card-title">{{@$title}}</h4>

                  <div id="addNewProduct" class="">
    <div class="">        
        <div class="">
            
            <form class="form-horizontal" action="{{ route('slideradd.page') }}" method="POST" enctype="multipart/form-data" id="newProduct" name="newProduct">
            {{ csrf_field() }}

            @if( count($errors) > 0 )
                
            <div style="display:inline-block;width: auto;" class="alert alert-danger">{{ $errors->first() }}</div>
            
        @endif
            <div class="modal-body">
                <div class="form-group row {{ $errors->has('firstTitle') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Slider Title 1</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control form-control-danger" placeholder="slider first title" name="firstTitle" value="{{ old('firstTitle') }}">
                        @if ($errors->has('firstTitle'))
                        @foreach($errors->get('firstTitle') as $error)
                        <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                        @endif
                    </div>
                </div>

                <div class="form-group row {{ $errors->has('secondTitle') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Slider Title 2</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control form-control-danger" placeholder="slider second title" name="secondTitle" value="{{ old('secondTitle') }}">
                        @if ($errors->has('secondTitle'))
                        @foreach($errors->get('secondTitle') as $error)
                        <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                        @endif
                    </div>
                </div>

                <div class="form-group row {{ $errors->has('description') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Slider Short Description</label>
                    <div class="col-sm-7">
                       <textarea class="form-control tinymce" name="description"></textarea>
                        @if ($errors->has('description'))
                        @foreach($errors->get('description') as $error)
                        <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                        @endif
                    </div>
                </div>

                <div class="form-group row {{ $errors->has('image') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Slider Image</label>
                    <div class="col-sm-7">
                        <input type="file" class="form-control form-control-danger" placeholder="Category Image" name="image" value="{{ old('image') }}">
                         <span class="imageSizeInfo">/* Standard Image Size : {{$othersInfo->sliderImage}} */ <br></span>
                        @if ($errors->has('image'))
                        @foreach($errors->get('image') as $error)
                        <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                        @endif
                    </div>
                </div>

                <div class="form-group row {{ $errors->has('link') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Link</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control form-control-danger" placeholder="url link" name="link" value="{{ old('link') }}">
                        @if ($errors->has('link'))
                        @foreach($errors->get('link') as $error)
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
                        <input type="text" class="form-control form-control-danger" placeholder="Meta Keyword" data-role="tagsinput" name="metaKeyword" value="{{ old('metaKeyword') }}">
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
                            <div>
                                <input type="radio" id="published" name="status" value="1" checked="" required>
                                <label for="published">Published</label>
                            </div>
                            <div>
                                <input type="radio" id="unpublished" name="status" value="0">
                                <label for="unpublished">Unpublished</label>
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

