$(document).ready(function() {
    
    $('#website-viewport').droppable({
        activeClass: "bg-success",
        drop: function( event, ui ) {
            $(this).append('<p>Dropped!!</p>');
        }
    });
    
});