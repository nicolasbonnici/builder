{% if sWidgetRenderMode === 'normal' %}
    <div class="col-md-12">
        
    </div>
{% endif %}
{% if sWidgetRenderMode === 'edition' %}
    <div class="widget-container showOnHover">
        <div class="widget-content">
            <div class="widget-toolbar targetToShow text-right">
                <span class="ui-drag-handle label label-default"><i class="glyphicon glyphicon-move"></i> drag</span>
                <a href="#" class="ui-delete-widget label label-danger"><i class="glyphicon glyphicon-remove"></i> delete</a>
            </div>
            <div class="col-md-12 ui-widget-droppable">
                
            </div>
        </div>
    </div>
{% endif %}
{% if sWidgetRenderMode === 'menu' %}
    <li class="ui-draggable widget-item well rounded" data-widget="FullWidthBlock">
        <h3>Full Width Block</h3>
        <p>Un block qui prend toute la largeur disponible.</p>
    </li>
{% endif %}