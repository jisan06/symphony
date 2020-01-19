@extends('admin.layouts.master')

@section('content')


<div class="row">
    <div class="col-12">
        <div class="card">
        <span class="shortlink">
         <a class="btn btn-info"  href="{{ route($goBackLink) }}"><i class="fa fa-arrow-left"></i> Go Back</a>
         <a class="btn btn-info" onclick="if (confirm(&quot;Are you sure you want Delete ?&quot;)) { return true; } return false;"  href="{{ route('partners.delete',$partner->id) }}"><i class="fa fa-trash"></i> Delete</a>
         <a class="btn btn-info"  href="{{ route('partners.add') }}"><i class="fa fa-plus"></i> Add New</a>
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
                            <form class="form-horizontal" action="{{ route('partners.edit',$partner->id) }}" method="POST" enctype="multipart/form-data" name="form">
                            {{ csrf_field() }}

                            @if( count($errors) > 0 )
                            <div style="display:inline-block;width: auto;" class="alert alert-danger">{{ $errors->first() }}</div>
                            
                        @endif
                            <div class="modal-body">
                                 <input type="hidden" name="aboutCompanyId" value="{{$partner->id}}">

                                <div class="form-group row {{ $errors->has('name') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Title 1</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-danger" placeholder="first title" name="name" value="{{ @$partner->name }}">
                                        @if ($errors->has('name'))
                                        @foreach($errors->get('name') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('information') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Title 2</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-danger" placeholder="second title" name="information" value="{{ @$partner->information }}">
                                        @if ($errors->has('information'))
                                        @foreach($errors->get('information') as $error)
                                        <div class="form-control-feedback">{{ $error }}</div>
                                        @endforeach
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('image') ? ' has-danger' : '' }}">
                                    <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Image</label>
                                    <div class="col-sm-9">
                                        <input type="file" class="form-control form-control-danger" name="image" value="{{ old('image') }}">
                                         <span class="imageSizeInfo">/* Standard Image Size : {{$othersInfo->partnerImage}} */ <br></span>
                                        <?php if (file_exists(@$partner->image)) { ?> 
                                        <img src="{{asset('/').@$partner->image}}" style="height: 90px;">
                                        <?php }else{ ?>
                                            <img src="{{asset('/public/frontend/noImage.jpg')}}" style="height: 94px;">
                                        <?php } ?>
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
                                        <textarea class="form-control tinymce" name="description" style="min-height: 250px"><?php echo $partner->description; ?></textarea>
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
                                        <input type="number"   name="orderBy" value="{{ $partner->orderBy }}" required>
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
                                                <input type="radio" name="status" value="1" required>
                                                <label for="published">Published</label>
                                            </div>
                                            <div>
                                                <input type="radio" name="status" checked="" value="0">
                                                <label for="unpublished">Unpublished</label>
                                            </div>
                                        </div>                            
                                    </div>
                                </div>

                                <div class="col-md-12 m-b-20 text-right">    
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
        document.forms['form'].elements['status'].value = "{{$partner->status}}";
</script>

@endsection


