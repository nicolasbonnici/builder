{% if sWidgetRenderMode === 'normal' %}
    <div class="page-header">
        <h1>
            Example page header <small>Normal mode</small>
        </h1>
    </div>
{% endif %}
{% if sWidgetRenderMode === 'edition' %}
    <div class="showOnHover">
        <div class="widget-content">
            <div class="widget-toolbar targetToShow text-right">
                <span class="ui-drag-handle label label-default"><i class="glyphicon glyphicon-move"></i> drag</span>
                <a href="#" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> delete</a>
            </div>
            <div class="page-header" contenteditable="true">
                <h1>
                    Example page header <small>Edition mode</small>
                </h1>
            </div>
        </div>
    </div>
{% endif %}
{% if sWidgetRenderMode === 'menu' %}
    <li class="ui-draggable widget-item well rounded" data-widget="header">
        <h3>header</h3>
        <p>Un entête de page simple avec slogan.</p>
    </li>
{% endif %}