<?php

namespace App\Http\Controllers;

use App\Contact;
use App\Menu;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function contacts(Request $request){
        	$this->validate(request(), [
                'contactName' => 'required',
                'contactPhone' => 'required',
                'contactEmail' => 'required|email',
                'contactTitle' => 'required',
                'contactMessage' => 'required',
            ]);

             $contact = Contact::create( [     
                'contactName' => $request->contactName,             
                'contactPhone' => $request->contactPhone, 
                'contactEmail' => $request->contactEmail, 
                'contactTitle' => $request->contactTitle,            
                'contactMessage' => $request->contactMessage,            
                          
            ]);

    }

}