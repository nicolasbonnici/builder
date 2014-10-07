{% if sWidgetRenderMode === 'normal' %}
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et ante eu erat porta tincidunt sit amet eu lorem. Cras ac pretium ex. Morbi blandit sagittis tortor ultrices fringilla. Donec molestie metus id lorem dictum, nec ornare nulla scelerisque. In ipsum purus, facilisis eget lobortis sit amet, auctor ac ligula. Nulla molestie lectus quis tortor fermentum convallis. Aenean eget mi leo.</p>
{% endif %}
{% if sWidgetRenderMode === 'edition' %}
    <div class="widget-container showOnHover">
        <div class="widget-content">
            <div class="widget-toolbar targetToShow text-right">
                <span class="ui-drag-handle label label-default"><i class="glyphicon glyphicon-move"></i> drag</span>
                <a href="#" class="ui-delete-widget label label-danger"><i class="glyphicon glyphicon-remove"></i> delete</a>
            </div>
            <p contenteditable="true">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et ante eu erat porta tincidunt sit amet eu lorem. Cras ac pretium ex. Morbi blandit sagittis tortor ultrices fringilla. Donec molestie metus id lorem dictum, nec ornare nulla scelerisque. In ipsum purus, facilisis eget lobortis sit amet, auctor ac ligula. Nulla molestie lectus quis tortor fermentum convallis. Aenean eget mi leo.</p>
        </div>
    </div>
{% endif %}
{% if sWidgetRenderMode === 'menu' %}
    <li class="ui-draggable widget-item well rounded" data-widget="Paragraphe">
        <h3>Paragraphe</h3>
        <p>Un simple paragraphe</p>
    </li>
{% endif %}