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
                            
                            <form class="form-horizontal" action="{{ route('chooseUs.add') }}" method="POST" enctype="multipart/form-data" id="newProduct" name="newProduct">
                            {{ csrf_field() }}

                            @if( count($errors) > 0 )
                                
                            <div style="display:inline-block;width: auto;" class="alert alert-danger">{{ $errors->first() }}</div>
                            
                        @endif
                            <div class="modal-body">
                                <div class="form-group row {{ $errors->has('title1') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Title 1</label>
                                    <div class="col-sm-9">
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
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-danger" placeholder="second title" name="title2" value="{{ old('title2') }}">
                                        @if ($errors->has('title2'))
                                        @foreach($errors->get('title2') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('image') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Image</label>
                                    <div class="col-sm-9">
                                        <input type="file" class="form-control form-control-danger" name="image" value="{{ old('image') }}">
                                        @if ($errors->has('image'))
                                        @foreach($errors->get('image') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('description') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Description</label>
                                    <div class="col-sm-9">
                                        <textarea class="form-control tinymce" name="description" style="min-height: 250px"></textarea>
                                        @if ($errors->has('description'))
                                        @foreach($errors->get('description') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                 <div class="form-group row {{ $errors->has('orderBy') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Order By</label>
                                    <div class="col-sm-9">
                                        <input type="number" name="orderBy" value="{{ old('orderBy') }}" required>
                                        @if ($errors->has('orderBy'))
                                        @foreach($errors->get('orderBy') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>
                                
                                <div class="form-group row {{ $errors->has('status') ? ' has-danger' : '' }}">
                                    <label class="col-sm-3 col-form-label">Publication status</label>
                                    <div class="col-sm-9 row">
                                        <div class="form-control">
                                            <div>
                                                <input type="radio" name="status" value="1" checked required>
                                                <label for="published">Published</label>
                                            </div>
                                            <div>
                                                <input type="radio" name="status" value="0">
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

