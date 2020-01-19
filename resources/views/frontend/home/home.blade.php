@extends('frontend.master')

@section('mainContent')
    @include('frontend.home.element.slider_top')
    @include('frontend.home.element.slider')
    @include('frontend.home.element.product')
    {{-- @include('frontend.home.element.product_feature') --}}
    {{-- @include('frontend.home.element.welcome_messege')
 --}}    
    @include('frontend.home.element.about_company')
    @include('frontend.home.element.portfolio')
    {{-- @include('frontend.home.element.why_choose_us') --}}
    {{-- @include('frontend.home.element.mission_vission') --}}
    {{-- @include('frontend.home.element.services') --}}
    {{-- @include('frontend.home.element.our_team') --}}
    {{-- @include('frontend.home.element.counter') --}}
    {{-- @include('frontend.home.element.blog') --}}
    {{-- @include('frontend.home.element.testimonial') --}}
    {{-- @include('frontend.home.element.partner') --}}
    @include('frontend.home.element.help_contact')
        
@endsection