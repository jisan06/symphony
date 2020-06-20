<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="{{ asset('/public/admin-elite/assets/node_modules/jquery/jquery-3.2.1.min.js') }}"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script><!--  Date picker -->

<!-- Jquery for multi select or choose -->
<script src="{{ asset('/public/admin-elite/dist/js/chosen.jquery.js') }}"></script>

<!-- date picker jquery -->
<!-- <script src="{{ asset('/public/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script> -->


<!-- Bootstrap popper Core JavaScript -->
<script src="{{ asset('/public/admin-elite/assets/node_modules/popper/popper.min.js') }}"></script>
<script src="{{ asset('/public/admin-elite/assets/node_modules/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('/public/admin-elite/assets/node_modules/datatables/jquery.dataTables.min.js') }}"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="{{ asset('/public/admin-elite/dist/js/perfect-scrollbar.jquery.min.js') }}"></script>
<!--Wave Effects -->
<script src="{{ asset('/public/admin-elite/dist/js/waves.js') }}"></script>
<!--Menu sidebar -->
<script src="{{ asset('/public/admin-elite/dist/js/sidebarmenu.js') }}"></script>
<!--Custom JavaScript -->
<script src="{{ asset('/public/admin-elite/dist/js/custom.min.js') }}"></script>

<!--stickey kit -->
<script src="{{ asset('/public/admin-elite/assets/node_modules/sticky-kit-master/dist/sticky-kit.min.js') }}"></script>
<script src="{{ asset('/public/admin-elite/assets/node_modules/sparkline/jquery.sparkline.min.js') }}"></script>

<!-- Sweet-Alert  -->
<script src="{{ asset('/public/admin-elite/assets/node_modules/sweetalert/sweetalert.min.js') }}"></script>
<script src="{{ asset('/public/admin-elite/assets/node_modules/sweetalert/jquery.sweet-alert.custom.js') }}"></script>

<!-- switchery  -->
<script src="{{ asset('/public/admin-elite/assets/node_modules/switchery/dist/switchery.min.js') }}"></script>

<!-- Morris graph chart -->
<script src="{{ asset('/public/admin-elite/assets/node_modules/morrisjs/morris.min.js') }}"></script>

<script src="{{ asset('/public/admin-elite/assets/node_modules/morrisjs/morris.js') }}"></script>
<script src="{{ asset('/public/admin-elite/assets/node_modules/morrisjs/raphael.min.js') }}"></script>

<!-- summernote  -->
<script src="{{ asset('/public/admin-elite/assets/node_modules/summernote/dist/summernote.min.js') }}"></script>	
<!-- tagsinput  -->
<script src="{{ asset('/public/admin-elite/assets/node_modules/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js') }}"></script>

<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
<script src="{{ asset('/public/admin-elite/tinymce/tinymce_editor.js') }}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.8/js/select2.min.js" defer></script>


{{-- script for multiple and suggested select --}}
<script>
	$(document).ready(function () {
	$(".select2").select2({
      tags: true,
      
	    });
	})
</script>

<script type="text/javascript">
	$(".chosen-select").chosen();
</script>

{{-- script for date picker --}}
<script>
	$( function() {
		$( ".add_datepicker" ).datepicker({
			changeMonth: true,
			changeYear: true,
			dateFormat: 'dd-mm-yy',
		}).datepicker('setDate', 'today');

		$( ".datepicker" ).datepicker({
			changeMonth: true,
			changeYear: true,
			dateFormat: 'dd-mm-yy',
		});
	} );
</script>

{{-- script for success messege hide --}}
<script>
  $(document).ready(function(){
		$('.alert-success').fadeIn().delay(2000).fadeOut();
  });
</script>

{{-- Data table --}}
 <script>
        $(document).ready(function() {
            var updateThis ;

            // Switchery
            var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));
            $('.js-switch').each(function() {
                new Switchery($(this)[0], $(this).data());
            });

            var table = $('.datatable').DataTable( {
                "orderable": false,
                "pageLength": 25,
            } );
            table.on( 'order.dt search.dt', function () {
	            table.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
	                cell.innerHTML = i+1;
	            } );
	        } ).draw();

        });
                
</script>

{{-- script for go back --}}
<script type="text/javascript">
	function goBack() {
        window.history.go(-1);
    }
</script>


{{-- <script type="text/javascript">
	$(document).ready(function () {
	    $("#menu_79").click(function () {
	        $("#fileManagerLinkDialog").attr('src', $('#fileManagerLink').attr("href"));
	        $("#fileManagerModal").modal({
	            modal: true,
	            close: function () {
	                $("#fileManagerLinkDialog").attr('src', "about:blank");
	            }
	        });
	        return false;
	    });
	});
</script> --}}
