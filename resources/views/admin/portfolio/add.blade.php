@extends('admin.layouts.master')

@section('content')

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
                <h4 class="card-title">{{$title}}</h4>

                <div id="addNewProduct" class="">
                    <div class="">        
                        <div class="">
                            <form class="form-horizontal" action="{{ route('portfolio.add') }}" method="POST" enctype="multipart/form-data">
                            {{ csrf_field() }}

                            @if( count($errors) > 0 )
                                
                            <div style="display:inline-block;width: auto;" class="alert alert-danger">{{ $errors->first() }}</div>
                            
                            @endif
                            <div class="modal-body">
                                <div class="form-group row {{ $errors->has('parentArticle') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Select Product</label>
                                    <div class="col-sm-9">
                                        <select class="form-control chosen-select" name="parentArticle" required>
                                            <option value=" ">Select Product</option>
                                    <?php
                                        foreach ($articleList as $parentArticle) {
                                    ?>
                                            <option value="{{$parentArticle->id}}">{{$parentArticle->articleName}}</option>
                                    <?php } ?>
                                        </select>
                                    </div>
                                </div>

                                {{-- <div class="form-group row {{ $errors->has('articleName') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Article Name</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-danger" placeholder="article name" name="articleName" value="{{ old('articleName') }}">
                                        @if ($errors->has('articleName'))
                                        @foreach($errors->get('articleName') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div> --}}

                                <div class="form-group row {{ $errors->has('firstHomeTitle') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Home Page Title</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-danger" placeholder="home page title" name="firstHomeTitle" value="{{ old('firstHomeTitle') }}">
                                        @if ($errors->has('firstHomeTitle'))
                                        @foreach($errors->get('firstHomeTitle') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                {{-- <div class="form-group row {{ $errors->has('secondHomeTitle') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Home Page Title 2</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-danger" placeholder="home page title 2" name="secondHomeTitle" value="{{ old('secondHomeTitle') }}">
                                        @if ($errors->has('secondHomeTitle'))
                                        @foreach($errors->get('secondHomeTitle') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div> --}}

                                <div class="form-group row {{ $errors->has('firstInnerTitle') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Inner Page Tittle</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-danger" placeholder="Inner Page Tittle" name="firstInnerTitle" value="{{ old('firstInnerTitle') }}">
                                        @if ($errors->has('firstInnerTitle'))
                                        @foreach($errors->get('firstInnerTitle') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                {{-- <div class="form-group row {{ $errors->has('secondInnerTitle') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Inner Page Tittle 2</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-danger" placeholder="Inner Page Tittle 2" name="secondInnerTitle" value="{{ old('secondInnerTitle') }}">
                                        @if ($errors->has('secondInnerTitle'))
                                        @foreach($errors->get('secondInnerTitle') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div> --}}

                                <div class="form-group row {{ $errors->has('firstHomeImage') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Home Page Image</label>
                                    <div class="col-sm-9">
                                        <input type="file" class="form-control form-control-danger" name="firstHomeImage" value="{{ old('firstHomeImage') }}">
                                         <span class="imageSizeInfo">/* Standard Image Size : {{$othersInfo->articleHomeImage}} */ <br></span>
                                        @if ($errors->has('firstHomeImage'))
                                        @foreach($errors->get('firstHomeImage') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('firstInnerImage') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Inner Page Image</label>
                                    <div class="col-sm-9">
                                        <input type="file" class="form-control form-control-danger" name="firstInnerImage" value="{{ old('firstInnerImage') }}">
                                         <span class="imageSizeInfo">/* Standard Image Size : {{$othersInfo->articleInnerImage}} */ <br></span>
                                        @if ($errors->has('firstInnerImage'))
                                        @foreach($errors->get('firstInnerImage') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('homeDescription') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Home Description</label>
                                    <div class="col-sm-9">
                                        <textarea class="form-control tinymce" name="homeDescription" style="min-height: 250px"></textarea>
                                        @if ($errors->has('homeDescription'))
                                        @foreach($errors->get('homeDescription') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('innerDescription') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Inner Description</label>
                                    <div class="col-sm-9">
                                        <textarea class="form-control tinymce" name="innerDescription" style="min-height: 250px"></textarea>
                                        @if ($errors->has('innerDescription'))
                                        @foreach($errors->get('innerDescription') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('urlLink') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Url Link</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-danger" placeholder="any url link" name="urlLink" value="{{ old('urlLink') }}">
                                        @if ($errors->has('urlLink'))
                                        @foreach($errors->get('urlLink') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('articleIcon') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Icon</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-danger" placeholder='<i class="fa fa-icon"></i>' name="articleIcon" value="{{ old('articleIcon') }}">
                                        @if ($errors->has('articleIcon'))
                                        @foreach($errors->get('articleIcon') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('metaTitle') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Meta Title</label>
                                    <div class="col-sm-9">
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
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-danger" placeholder="Meta Keyword" name="metaKeyword" value="{{ old('metaKeyword') }}" data-role="tagsinput">
                                        @if ($errors->has('metaKeyword'))
                                        @foreach($errors->get('metaKeyword') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('metaDescription') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Meta description</label>
                                    <div class="col-sm-9">
                                        <textarea style="min-height: 100px;" class="form-control" name="metaDescription">{{ old('metaDescription') }}</textarea>
                                        @if ($errors->has('metaDescription'))
                                        @foreach($errors->get('metaDescription') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                 {{-- <div class="form-group row {{ $errors->has('orderBy') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Order By</label>
                                    <div class="col-sm-9">
                                        <input type="number"   name="orderBy" value="{{ old('orderBy') }}" required>
                                        @if ($errors->has('orderBy'))
                                        @foreach($errors->get('orderBy') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div> --}}

                                <div class="form-group row {{ $errors->has('articleStatus') ? ' has-danger' : '' }}">
                                    <label class="col-sm-3 col-form-label">Publication status</label>
                                    <div class="col-sm-9 row">
                                        <div class="form-control">
                                            <div>
                                                <input type="radio" name="articleStatus"  value="1" checked required>
                                                <label for="published">Published</label>
                                            </div>
                                            <div>
                                                <input type="radio" name="articleStatus" value="0">
                                                <label for="unpublished">Unpublished</label>
                                            </div>
                                        </div>                            
                                    </div>
                                </div>
                                <div class="col-md-12 m-b-20 text-right">    
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

