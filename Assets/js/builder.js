$(document).ready(function() {
    
    var builder = {
            
        init: function() {
            
            // Load website viewport droppable
            $('#website-viewport').droppable({
                activeClass: "bg-success",
                drop: function( event, ui ) {
                    var sWidget = ui.draggable.attr('data-widget');
                    if (sWidget !== '') {
                        builder.loadWidget(sWidget, 'edition');
                    }
                }
            });
            
        },
    
        /**
         * XmlHttpRequets to asynch render the widget under the website viewport
         * 
         * @param string sWidget  
         * @param string sWidgetRenderMode
         */
        loadWidget: function(sWidget, sWidgetRenderMode) {
            console.log(sWidget, sWidgetRenderMode);
            $.ajax({
                type : 'POST',
                data : {
                    "widget": sWidget,
                    "rendermode": sWidgetRenderMode,
                },
                url : '/builder/widget/load',
                beforeSend : function(preload) {

                },
                success : function(rep) {
                    $('#website-viewport-content').append(rep);
                },
                error : function(err) {

                },
                complete : function() {

                }
            });
        }
    
    };
    
    builder.init();
    
});