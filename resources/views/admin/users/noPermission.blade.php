@extends('admin.layouts.master')

@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->

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
                <h3 class="card-title" style="text-align: center;font-size: 54px;color: #d41010;">Sorry</h3>
                <h4 class="card-title" style="text-align: center;font-size: 30px;color: #e63030;">You Have No Permission for This Action</h4>

                  <div id="addNewProduct" class="">
                    <div class="">        
                        <div class="">
                            
                     
                        </div>
                    </div>
    <!-- /.modal-dialog -->
</div>
                
            </div>
        </div>
    </div>
</div>

@endsection


