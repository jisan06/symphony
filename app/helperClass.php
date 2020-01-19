<?php

namespace App;

use Intervention\Image\ImageManagerStatic as Image;
use  File;
use  DB;

class helperClass
{
    public static function siteLogo($file)
    {
        $data = getimagesize($file);
        $filename = $file->getClientOriginalName(); 
        $name = pathinfo($filename, PATHINFO_FILENAME);
        $logoExtension = $file->getClientOriginalExtension();
        //$name = $file->getClientOriginalName();
            $directory = 'public/uploads/site_logo/logo/';
            if(!file_exists ($directory))
            mkdir($directory);
            move_uploaded_file($file, "$directory$name".'.'."$logoExtension");
            return $directory.($name.'.'.$logoExtension);
    }

    public static function sitefavIcon($file)
    {
        $data = getimagesize($file);
        $filename = $file->getClientOriginalName(); 
        $name = pathinfo($filename, PATHINFO_FILENAME);
        $logoExtension = $file->getClientOriginalExtension();
        //$name = $file->getClientOriginalName();
            $directory = 'public/uploads/site_logo/fav_icon/';
            if(!file_exists ($directory))
            mkdir($directory);
            move_uploaded_file($file, "$directory$name".'.'."$logoExtension");
            return $directory.($name.'.'.$logoExtension);
    }

    public static function adminLogo($file)
    {
        $data = getimagesize($file);
        $filename = $file->getClientOriginalName(); 
        $name = pathinfo($filename, PATHINFO_FILENAME);
        $logoExtension = $file->getClientOriginalExtension();
        //$name = $file->getClientOriginalName();
            $directory = 'public/uploads/admin_logo/main_logo/';
            if(!file_exists ($directory))
            mkdir($directory);
            move_uploaded_file($file, "$directory$name".'.'."$logoExtension");
            return $directory.($name.'.'.$logoExtension);
    }

    public static function adminsmalLogo($file)
    {
        $data = getimagesize($file);
        $filename = $file->getClientOriginalName(); 
        $name = pathinfo($filename, PATHINFO_FILENAME);
        $logoExtension = $file->getClientOriginalExtension();
        //$name = $file->getClientOriginalName();
            $directory = 'public/uploads/admin_logo/small_logo/';
            if(!file_exists ($directory))
            mkdir($directory);
            move_uploaded_file($file, "$directory$name".'.'."$logoExtension");
            return $directory.($name.'.'.$logoExtension);
    }

    public static function adminfavIcon($file)
    {
        $data = getimagesize($file);
        $filename = $file->getClientOriginalName(); 
        $name = pathinfo($filename, PATHINFO_FILENAME);
        $logoExtension = $file->getClientOriginalExtension();
        //$name = $file->getClientOriginalName();
            $directory = 'public/uploads/admin_logo/fav_icon/';
            if(!file_exists ($directory))
            mkdir($directory);
            move_uploaded_file($file, "$directory$name".'.'."$logoExtension");
            return $directory.($name.'.'.$logoExtension);
    }

    public static function _categoryCoverImage($file)
    {
        $data = getimagesize($file);
        $filename = $file->getClientOriginalName(); 
        $name = pathinfo($filename, PATHINFO_FILENAME);
        $logoExtension = $file->getClientOriginalExtension();
        //$name = $file->getClientOriginalName();
            $directory = 'public/uploads/category_image/categoryCoverImage/';
            if(!file_exists ($directory))
            mkdir($directory);
            move_uploaded_file($file, "$directory$name".'.'."$logoExtension");
            return $directory.($name.'.'.$logoExtension);
    }

    public static function _categoryImage($file)
    {
        $data = getimagesize($file);
        $width = $data[0];
        $height = $data[1];

        $directory = 'public/uploads/category_image/';
        if(!file_exists ($directory))
            mkdir($directory);
        $logoUrl = $directory.($name);
        Image::make($file)->resize(min(1200,$width) , min(800,$height))->save($logoUrl);  
        return $logoUrl;
    }


    public static function _bannerImage($file)
    {
        $data = getimagesize($file);
        $width = $data[0];
        $height = $data[1];

        $directory = 'public/uploads/banner_image/';
        if(!file_exists ($directory))
            mkdir($directory);
        $logoUrl = $directory.($name);
        Image::make($file)->resize(min(1200,$width) , min(800,$height))->save($logoUrl);  
        return $logoUrl;
    }

    public static function _blogImage($file)
    {
        $data = getimagesize($file);
        $width = $data[0];
        $height = $data[1];

        $directory = 'public/uploads/blog_image/';
        if(!file_exists ($directory))
            mkdir($directory);
        $logoUrl = $directory.($name);
        Image::make($file)->resize(min(1200,$width) , min(800,$height))->save($logoUrl);  
        return $logoUrl;
    }

    public static function _vendorImage($file)
    {
        $data = getimagesize($file);
        $width = $data[0];
        $height = $data[1];

        $directory = 'public/uploads/vendor/';
        if(!file_exists ($directory))
            mkdir($directory);
        $logoUrl = $directory.($logoName.'.'.$logoExtension);
        Image::make($file)->resize(min(1200,$width) , min(800,$height))->save($logoUrl);  
        return $logoUrl;
    }

    /**
     * Upload file to the specified location. Later it will upload by date.
     * @return file url.
     */
    public static function _writeFile($content)
    {

        /*$fileName = date("Y_m_d_H_i_s_u").'-'.str_random(20).'.txt';
        $directory = 'public/uploads/flies/'.date('Y_m_d').'/';         

        if(!file_exists ($directory))
            mkdir($directory);
            // File::makeDirectory(public_path().'/'.$directory,0777,true);

        $fileUrl = $directory.$fileName;      

        $file = fopen($fileUrl, "w") or die("Unable to open file!");
        fwrite($file, $content);
        fclose($file);

        return $fileUrl;*/
    }

    /**
     * Upload file to the specified location. Later it will upload by date.
     * @return file url.
     */
    public static function _writeNammedFile($content, $address)
    {   
        $fileName = $address;
        $directory = 'public/uploads/';         

        if(!file_exists ($directory))
            File::makeDirectory(public_path().'/'.$directory,0777,true);
        $fileUrl = $directory.$fileName;      

        $file = fopen($fileUrl, "w") or die("Unable to open file!");
        fwrite($file, $content);
        fclose($file);
        return true;
    }

    /**
     * Read file data form the address given.
     * @param the file address to read.
     * @return the contents.
     */
    public static function _readFile($address){
        /*$file = fopen( asset('/').$address, "r") or die("Unable to open file!");
        $content = fgets($file);
        fclose($file);
        return $content;*/
    }

    /*function strReplace($slug){
        return str_slug('%', '-', $slug));
    }*/

    /**
     * Read file data form the address given.
     * @param the file address to read.
     * @return the length.
     */
    public static function _count($address){
        $file = fopen( asset('/').$address, "r") or die("Unable to open file!");
        $content = fgets($file);
        fclose($file);
        return strlen($content);
    }


    public static function CompanyMainLogo($file,$companyName)
    {
        $data = getimagesize($file);
        $filename = $file->getClientOriginalName(); 
        $name = pathinfo($filename, PATHINFO_FILENAME);
        $logoExtension = $file->getClientOriginalExtension();
        //$name = $file->getClientOriginalName();
            $directory = 'public/uploads/company/main_logo/';
            if(!file_exists ($directory))
            mkdir($directory);
            move_uploaded_file($file, "$directory$name".'_'.$companyName.'.'."$logoExtension");
            return $directory.($name.'_'.$companyName.'.'.$logoExtension);
    }

    public static function CompanySmallLogo($file,$companyName)
    {
        $data = getimagesize($file);
        $filename = $file->getClientOriginalName(); 
        $name = pathinfo($filename, PATHINFO_FILENAME);
        $logoExtension = $file->getClientOriginalExtension();
        //$name = $file->getClientOriginalName();
            $directory = 'public/uploads/company/small_logo/';
            if(!file_exists ($directory))
            mkdir($directory);
            move_uploaded_file($file, "$directory$name".'_'.$companyName.'.'."$logoExtension");
            return $directory.($name.'_'.$companyName.'.'.$logoExtension);
    }


    /*This is last modified function for upload any image*/
    public static function UploadImage($file,$table=null,$directory=null)
    {   
        $lastData = \DB::table($table)->find(\DB::table($table)->max('id'));
        if(@$lastData){
            $maxId = $lastData->id+1+rand(100000000,99999999999);
        }else{
           $maxId = '1'.+rand(100000000,99999999999); 
        }
        
        $data = getimagesize($file);
        $filename = $file->getClientOriginalName(); 
        $name = pathinfo($filename, PATHINFO_FILENAME);
        $logoExtension = $file->getClientOriginalExtension();
        if(!file_exists ($directory))
        mkdir($directory);
        move_uploaded_file($file, "$directory$name".'_'.$maxId.'.'."$logoExtension");
        return $directory.($name.'_'.$maxId.'.'.$logoExtension);
    }
}
