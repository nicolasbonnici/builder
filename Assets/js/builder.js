$(document).ready(function() {
    
    $('.ui-sortable').each(function() {
        $(this).sortable({
            forceHelperSize: true,
            connectWith: ((typeof($(this).data('connected-with')) !== 'undefined') ? $(this).data('connected-with') : false)
        });
    });
});