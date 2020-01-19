/*javascript for  our team section*/

$(document).ready(function(){

    $(".filter-button-team").click(function(){
        var value = $(this).attr('data-filter-team');
        
        if(value == "allTeam")
        {
            //$('.filter').removeClass('hidden');
            $('.filter-team').show();
        }
        else
        {
//            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
//            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
            $(".filter-team").not('.'+value).hide();
            $('.filter-team').filter('.'+value).show();
            
        }
         $(this).addClass('teamCategoryActive').siblings().removeClass('teamCategoryActive');
    });
    
    /*if ($(".filter-button-team").removeClass("teamCategoryActive")) {
$(this).removeClass("teamCategoryActive");
}
$(this).addClass("teamCategoryActive");*/

});

