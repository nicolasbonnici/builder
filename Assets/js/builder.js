$(document).ready(function() {
    
    $('.ui-sortable').each(function() {
        $(this).sortable({
            forceHelperSize: true,
            connectWith: ((typeof($(this).data('connected')) !== 'undefined') ? $(this).data('connected') : false)
        });
    });
});