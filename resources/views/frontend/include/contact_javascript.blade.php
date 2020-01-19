<script>
    $(document).ready(function() {
        //javascript contact messege
            $("form[name='contactForm']").submit(function(e){
                e.preventDefault();
            $.ajaxSetup({
              headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
              }
            }); 
            var contactName = $('.contactName').val(); 
            var contactPhone = $('.contactPhone').val(); 
            var contactEmail = $('.contactEmail').val(); 
            var contactTitle = $('.contactTitle').val(); 
            var contactMessage = $('.contactMessage').val(); 
           $.ajax({
                type: "POST",
                url : "{{ route('contact.save') }}",
                data : {
                    contactName:contactName,
                    contactPhone:contactPhone,
                    contactEmail:contactEmail,
                    contactTitle:contactTitle,
                    contactMessage:contactMessage,
                },
                success: function(response) {
                    swal({
                        title: "<small class='text-success'>Success!</small>", 
                        type: "success",
                        text: "Feedback Successfull",
                        timer: 2500,
                        html: true,
                    });
                    $("form[name='contactForm']").trigger("reset");
                },
                error: function(response) {
                    error = "Failed.";
                    swal({
                        title: "<small class='text-danger'>Error!</small>", 
                        type: "error",
                        text: error,
                        timer: 2500,
                        html: true,
                    });
                }

            });    
        }); 

    });
                
</script>