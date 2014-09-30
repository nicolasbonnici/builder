$(document).ready(function() {
    
    $('.ui-sortable').each(function() {
        var sConnectedSelector = ((typeof($(this).attr('data-connected')) !== 'undefined') ? $(this).attr('data-connected') : false);
        $(this).sortable({
            cursor: 'move',
            revert: true,
            helper: 'clone',
            forceHelperSize: true,
            connectWith: sConnectedSelector
        });
    });
    
    $('.ui-draggable').each(function() {
        var sConnectedSelector = ((typeof($(this).attr('data-connected')) !== 'undefined') ? $(this).attr('data-connected') : false);
        $(this).draggable({
            zIndex: 999,
            cursor: 'move',
            revert: true,
            helper: 'clone'
//            forceHelperSize: true,
//            connectWith: sConnectedSelector
        });
    });
    
    $('.ui-droppable').each(function() {
        $(this).droppable({
            activeClass: "alert-success",
            drop: function( event, ui ) {
                $(this).append('<p>Dropped!!</p>');
            }
        });
    });

});