<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<?php
header("Cache-Control: no-cache, must-revalidate");
header("Content-Type: application/xml; charset=utf-8");
?>
<META NAME="KEYWORDS" CONTENT="<?php echo @$metaTag['meta_keyword']; ?>">
<META NAME="TITLE" CONTENT="<?php echo @$metaTag['meta_title']; ?>">
<META NAME="DESCRIPTION" CONTENT="<?php echo @$metaTag['meta_description']; ?>">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="csrf-token" content="{{ csrf_token() }}">
<link rel="shortcut icon" type="image/png" href="{{ asset('/').@$information->sitefavIcon }}">
<title>{{ @$title }}</title>
@include('frontend.include.header-asset')
</head>
<body id="top">
<div class="row" style="width: 100%">
    <div class="col-md-2">
        {{-- <div class="page_loader"></div> --}}
        <header class="main-header sticky-header" id="main-header-2">
             <div class="container-fluid">
                @include('frontend.include.header-menu')
                    
            </div>
        </header>   
    </div>

    <div class="col-md-10">
        @if(URL::current() != url('/'))
        @include('frontend.include.breadcomes')
        @endif
        @yield('mainContent')
        <!-- Footer start -->
        <footer class="footer">
            <div class="container footer-inner">
                @include('frontend.include.footer_top')
                @include('frontend.include.footer_bottom')
            </div>
        </footer>
        <!-- Footer end -->
    </div>
</div>
		

<!-- Full Page Search -->
<div id="full-page-search">
    <button type="button" class="close">×</button>
    <form action="#">
        <input type="search" value="" placeholder="type keyword(s) here" />
        <button type="button" class="btn btn-sm btn-color">Search</button>
    </form>
</div>


@include('frontend.include.footer-asset')
@include('frontend.include.contact_javascript')

</body>

</html>

