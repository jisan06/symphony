@extends('admin.layouts.master')

@section('content')

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <?php
                    $message = Session::get('msg');
                      if (isset($message)) {
                        echo"<div style='display:inline-block;width: auto;' class='alert alert-success'><strong>" .$message."</strong></div>";
                      }

                      Session::forget('msg')
                  
                ?>
                <h4 class="card-title">Update Website Information</h4>

                <div id="editSettings" class="">
                    <div class="">        
                        <div class="">
                            <form class="form-horizontal" action="{{route('settings.update')}}" method="POST" enctype="multipart/form-data" name="editSettings">
                                {{ csrf_field() }}
                                <input type="hidden" name="settingId" value="{{$settings->id}}">
                                    <div class="form-group row {{ $errors->has('siteTitle') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Website Title</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="siteTitle" value="{{ @$settings->siteTitle }}" required>
                                           
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('siteName') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Website Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="siteName" value="{{ @$settings->siteName }}" required>
                                           
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('siteLogo') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Website Logo</label>
                                        <div class="col-sm-9">
                                            <input type="file" class="form-control" id="siteLogo" aria-describedby="fileHelp" name="siteLogo">
                                            <span class="imageSizeInfo">/* Standard Image Size : {{$othersInfo->homeLogo}} */ <br></span>
                                            <img src="{{ asset('/').@$settings->siteLogo }}" style="width:200px;">
                                            @if ($errors->has('siteLogo'))
                                            @foreach($errors->get('siteLogo') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('sitefavIcon') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Website Fav Icon</label>
                                        <div class="col-sm-9">
                                            <input type="file" class="form-control" id="sfavIconogo" aria-describedby="fileHelp" name="sitefavIcon">
                                            <span class="imageSizeInfo">/* Standard Image Size : {{$othersInfo->homeFavIcon}} */ <br></span>
                                            <img src="{{ asset('/').@$settings->sitefavIcon }}" style="width:75px;">
                                            @if ($errors->has('sitefavIcon'))
                                            @foreach($errors->get('sitefavIcon') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                     <div class="form-group row {{ $errors->has('mobile1') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Phone Number 1</label>
                                        <div class="col-sm-9"> 
                                            <input type="text" class="form-control form-control-danger" placeholder="First Phone Number" name="mobile1" value="{{ @$settings->mobile1 }}" required>
                                            @if ($errors->has('mobile1'))
                                            @foreach($errors->get('mobile1') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                     <div class="form-group row {{ $errors->has('mobile2') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Phone Number 2</label>
                                        <div class="col-sm-9"> 
                                            <input type="text" class="form-control form-control-danger" placeholder="Second Phone Number" name="mobile2" value="{{ @$settings->mobile2 }}">
                                            @if ($errors->has('mobile2'))
                                            @foreach($errors->get('mobile2') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                     <div class="form-group row {{ $errors->has('siteEmail1') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Email Address 1</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-danger" placeholder="Email Address" name="siteEmail1" value="{{ @$settings->siteEmail1 }}">
                                            @if ($errors->has('siteEmail1'))
                                            @foreach($errors->get('siteEmail1') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('siteEmail2') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Email Address 2</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-danger" placeholder="Email Address" name="siteEmail2" value="{{ @$settings->siteEmail2 }}">
                                            @if ($errors->has('siteEmail2'))
                                            @foreach($errors->get('siteEmail2') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>



                                    <div class="form-group row {{ $errors->has('siteAddress1') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Website Address 1</label>
                                        <div class="col-sm-9">
                                            <textarea class="form-control form-control-danger" name="siteAddress1" required>{{ @$settings->siteAddress1 }}</textarea>
                                            @if ($errors->has('siteAddress1'))
                                            @foreach($errors->get('siteAddress1') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('siteAddress2') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Website Address 2</label>
                                        <div class="col-sm-9">
                                            <textarea class="form-control form-control-danger" name="siteAddress2" required>{{ @$settings->siteAddress2 }}</textarea>
                                            @if ($errors->has('siteAddress2'))
                                            @foreach($errors->get('siteAddress2') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>
                                   
                                    <div class="form-group row {{ $errors->has('metaTitle') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Meta Title</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-danger" placeholder="Meta Title" name="metaTitle" value="{{ @$settings->metaTitle }}">
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
                                            <input type="text" class="form-control form-control-danger" placeholder="Meta Keyword" data-role="tagsinput" name="metaKeyword" value="{{ @$settings->metaKeyword }}">
                                            @if ($errors->has('metaKeyword'))
                                            @foreach($errors->get('metaKeyword') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('description') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Meta description</label>
                                        <div class="col-sm-9">
                                            <textarea style="min-height: 100px;" class="form-control" name="metaDescription">{{ @$settings->metaDescription }}</textarea>
                                            @if ($errors->has('metaDescription'))
                                            @foreach($errors->get('metaDescription') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                     <div class="form-group row {{ $errors->has('orderBy') ? ' has-danger' : '' }}">
                                        <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Order By</label>
                                        <div class="col-sm-9">
                                            <input type="number"   name="orderBy" value="{{ @$settings->orderBy }}">
                                            @if ($errors->has('orderBy'))
                                            @foreach($errors->get('orderBy') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('sitestatus') ? ' has-danger' : '' }}">
                                        <label class="col-sm-3 col-form-label">Publication Status</label>
                                        <div class="col-sm-9 row">
                                            <div class="form-control">
                                                <div>
                                                    <input type="radio" name="sitestatus" value="1" required>
                                                    <label for="published">Published</label>
                                                </div>
                                                <div>
                                                    <input type="radio" name="sitestatus" value="0">
                                                    <label for="unpublished">Unpublished</label>
                                                </div>
                                            </div>                            
                                        </div>
                                    </div>

                                    <div class="col-md-12 m-b-20 text-right">    
                                        <button type="submit" class="btn btn-info waves-effect">Update Information</button> 
                                    </div>
                                </div>                
                            </form>
                        </div>
                    </div>
    
                </div>
                
            </div>
        </div>
    </div>
</div>



    <script type="text/javascript">

        document.forms['editSettings'].elements['sitestatus'].value = "{{$settings->sitestatus}}";

    </script>

@endsection