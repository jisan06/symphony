@extends('admin.layouts.master')

@section('content')

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <h4 class="card-title">{{$title}}</h4>
                    </div>
                    <div class="col-sm-6">
                         <span class="shortlink">
                            <a class="btn btn-info" onclick="goBack()" ><i class="fa fa-arrow-left"></i> Go Back</a>
                        </span>
                    </div>
                </div>
                <?php
                    $message = Session::get('msg');
                      if (isset($message)) {
                        echo"<div style='display:inline-block;width: auto;' class='alert alert-success'><strong>" .$message."</strong></div>";
                      }

                      Session::forget('msg')
                  
                ?>
                <div id="addNewProduct" class="">
                    <div class="">        
                        <div class="">
                            
                            <form class="form-horizontal" action="{{ route('teamCategory.add') }}" method="POST" enctype="multipart/form-data" id="newProduct" name="newProduct">
                            {{ csrf_field() }}

                            @if( count($errors) > 0 )
                                
                            <div style="display:inline-block;width: auto;" class="alert alert-danger">{{ $errors->first() }}</div>
                            
                        @endif
                            <div class="modal-body">
                                <div class="form-group row {{ $errors->has('name') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Name</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-danger" placeholder="name" name="name" value="{{ old('name') }}">
                                        @if ($errors->has('name'))
                                        @foreach($errors->get('name') as $error)
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

