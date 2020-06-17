$(document).ready(function () {
    var root_path = document.querySelector('meta[name="root_path"]').content;
    setTimeout(function () {
        $(".message").slideUp(1000).hide(1000);
    }, 5000);

    tinymce.init({
        selector: '.tinymce',
        height: 600,
        menubar: false,
        removed_menuitems: 'file',
        file_browser_callback : 'myFileBrowser',
        image_title: true, 
        paste_data_images: true,
          // enable automatic uploads of images represented by blob or data URIs
          automatic_uploads: true,
          // add custom filepicker only to Image dialog
          file_picker_types: 'image',
          file_picker_callback: function(cb, value, meta) {
            var input = document.createElement('input');
            input.setAttribute('type', 'file');
            input.setAttribute('accept', 'image/*');

            input.onchange = function() {
              var file = this.files[0];
              var reader = new FileReader();
              
              reader.onload = function () {
                var id = 'blobid' + (new Date()).getTime();
                var blobCache =  tinymce.activeEditor.editorUpload.blobCache;
                var base64 = reader.result.split(',')[1];
                var blobInfo = blobCache.create(id, file, base64);
                blobCache.add(blobInfo);

                // call the callback and populate the Title field with the file name
                cb(blobInfo.blobUri(), { title: file.name });
              };
              reader.readAsDataURL(file);
            };
            
            input.click();
          },

        plugins: [
            "advlist autolink autosave link image lists charmap print preview hr anchor pagebreak",
            "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
            "table contextmenu directionality emoticons textcolor fullpage textcolor colorpicker textpattern"
        ],

        toolbar1: "bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | styleselect fontselect fontsizeselect",
        toolbar2: "searchreplace | bullist numlist | outdent indent blockquote | link unlink anchor image imagetools media code | insertdatetime preview | forecolor backcolor",
        toolbar3: "table | hr removeformat | subscript superscript | charmap emoticons | print fullscreen | ltr rtl | visualchars visualblocks nonbreaking pagebreak",
            relative_urls : false,
        remove_script_host : false,
        convert_urls : false,
        content_css: [
            root_path+"/public/admin-elite/tinymce/css/tinymce-editor.css"
        ],

        

    });
});
