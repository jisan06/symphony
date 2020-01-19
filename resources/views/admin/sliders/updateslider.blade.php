@extends('admin.layouts.master')

@section('content')


<div class="row">
    <div class="col-12">
        <div class="card">
    <span class="shortlink">
         <a class="btn btn-info"  href="{{ route($goBackLink) }}"><i class="fa fa-arrow-left"></i> Go Back</a>
        
         <a class="btn btn-info" onclick="if (confirm(&quot;Are you sure you want Delete ?&quot;)) { return true; } return false;"  href="{{ route('slider.delete',$sliders->id) }}"><i class="fa fa-trash"></i> Delete</a>
         <a class="btn btn-info"  href="{{ route('slideradd.page') }}"><i class="fa fa-plus"></i> Add New</a>
         
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
            
            <form class="form-horizontal" action="{{ route('slider.edit',$sliders->id) }}" method="POST" enctype="multipart/form-data" id="editSlider" name="editSlider">
            {{ csrf_field() }}

            @if( count($errors) > 0 )
                
            <div style="display:inline-block;width: auto;" class="alert alert-danger">{{ $errors->first() }}</div>
            
        @endif
            <div class="modal-body">

                <input type="hidden" name="sliderId" value="{{$sliders->id}}">

                <div class="form-group row {{ $errors->has('firstTitle') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Slider Title 1</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control form-control-danger" placeholder="slider first title" name="firstTitle" value="{{ $sliders->firstTitle }}">
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
                        <input type="text" class="form-control form-control-danger" placeholder="slider second title" name="secondTitle" value="{{ $sliders->secondTitle }}">
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
                       <textarea class="form-control tinymce" name="description">{{$sliders->description}}</textarea>
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
                        <input type="file" class="form-control form-control-danger" placeholder="Slider image" name="image">
                         <span class="imageSizeInfo">/* Standard Image Size : {{$othersInfo->sliderImage}} */ <br></span>
                        @if ($errors->has('image'))
                        @foreach($errors->get('image') as $error)
                        <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                        @endif
                        <?php if (file_exists(@$sliders->image)) { ?> 
                            <img src="{{asset('/').@$sliders->image}}" style="height: 44px;">
                        <?php }else{ ?>
                            <img src="{{asset('/public/frontend/noImage.jpg')}}" style="height: 44px;">
                        <?php } ?>
                    </div>
                </div>

                <div class="form-group row {{ $errors->has('link') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Link</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control form-control-danger" placeholder="url link" name="link" value="{{ $sliders->link }}">
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
                        <input type="text" class="form-control form-control-danger" placeholder="Meta Title" name="metaTitle" value="{{ $sliders->metaTitle }}">
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
                        <input type="text" class="form-control form-control-danger" placeholder="Meta Keyword" data-role="tagsinput" name="metaKeyword" value="{{ $sliders->metaKeyword }}">
                        @if ($errors->has('metaKeyword'))
                        @foreach($errors->get('metaKeyword') as $error)
                        <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                        @endif
                    </div>
                </div>

                <div class="form-group row {{ $errors->has('metaDescription') ? ' has-danger' : '' }}">
                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Meta metaDescription</label>
                    <div class="col-sm-7">
                        <textarea style="min-height: 100px;" class="form-control" name="metaDescription">{{ $sliders->metaDescription }}</textarea>
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
                        <input type="number"   name="orderBy" value="{{ $sliders->orderBy }}" required>
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
        document.forms['editSlider'].elements['status'].value = "{{$sliders->status}}";

        
    </script>

@endsection