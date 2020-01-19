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
                <h4 class="card-title">{{$title}}</h4>
                <div id="editlogos" class="">
                    <div class="">        
                        <div class="">  
                            <form class="form-horizontal" action="{{route('others.info')}}" method="POST" enctype="multipart/form-data" name="editlogos">
                                {{ csrf_field() }}
                                
                                  <div class="form-group row {{ $errors->has('homeLogo') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Home Page Logo ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="homeLogo" placeholder="200*300 px" value="{{$info->homeLogo}}">
                                            @if ($errors->has('homeLogo'))
                                            @foreach($errors->get('homeLogo') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('homeFavIcon') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Home Page Fav Icon ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="homeFavIcon" placeholder="50*100 px" value="{{$info->homeFavIcon}}">
                                            @if ($errors->has('homeFavIcon'))
                                            @foreach($errors->get('homeFavIcon') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('categoryCoverImage') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Category Cover Image ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="categoryCoverImage" placeholder="50*100 px" value="{{$info->categoryCoverImage}}">
                                            @if ($errors->has('categoryCoverImage'))
                                            @foreach($errors->get('categoryCoverImage') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('categoryImage') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Category Image ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="categoryImage" placeholder="50*100 px" value="{{$info->categoryImage}}">
                                            @if ($errors->has('categoryImage'))
                                            @foreach($errors->get('categoryImage') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('sliderImage') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Slider Image ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="sliderImage" placeholder="800*500 px" value="{{$info->sliderImage}}">
                                            @if ($errors->has('sliderImage'))
                                            @foreach($errors->get('sliderImage') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('teamMemberImage') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Team Member Image ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="teamMemberImage" placeholder="200*100 px" value="{{$info->teamMemberImage}}">
                                            @if ($errors->has('teamMemberImage'))
                                            @foreach($errors->get('teamMemberImage') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('testimonialImage') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Testimonial Image ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="testimonialImage" placeholder="200*100 px" value="{{$info->testimonialImage}}">
                                            @if ($errors->has('testimonialImage'))
                                            @foreach($errors->get('testimonialImage') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('partnerImage') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Partner Image ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="partnerImage" placeholder="200*100 px" value="{{$info->partnerImage}}">
                                            @if ($errors->has('partnerImage'))
                                            @foreach($errors->get('partnerImage') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('articleHomeImage') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Artical Home Image ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="articleHomeImage" placeholder="200*100 px" value="{{$info->articleHomeImage}}">
                                            @if ($errors->has('articleHomeImage'))
                                            @foreach($errors->get('articleHomeImage') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('articleInnerImage') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Artical Inner Image ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="articleInnerImage" placeholder="200*100 px" value="{{$info->articleInnerImage}}">
                                            @if ($errors->has('articleInnerImage'))
                                            @foreach($errors->get('articleInnerImage') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('adminMainLogo') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Admin Main Logo ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="adminMainLogo" placeholder="200*100 px" value="{{$info->adminMainLogo}}">
                                            @if ($errors->has('adminMainLogo'))
                                            @foreach($errors->get('adminMainLogo') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('adminSmallLogo') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Admin Small Logo ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="adminSmallLogo" placeholder="200*100 px" value="{{$info->adminSmallLogo}}">
                                            @if ($errors->has('adminSmallLogo'))
                                            @foreach($errors->get('adminSmallLogo') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group row {{ $errors->has('adminFavIcon') ? ' has-danger' : '' }}">
                                       <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Admin Fav Icon ( width*height )</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control"  name="adminFavIcon" placeholder="200*100 px" value="{{$info->adminFavIcon}}">
                                            @if ($errors->has('adminFavIcon'))
                                            @foreach($errors->get('adminFavIcon') as $error)
                                            <div class="form-control-feedback">{{ $error }}</div>
                                            @endforeach
                                            @endif
                                        </div>
                                    </div>

                                    <div class="col-md-10 m-b-20 text-right">    
                                    <button type="submit" class="btn btn-info waves-effect"><i class="fa fa-save"></i> UPDATE</button> 
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

@endsection

