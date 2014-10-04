{% if sWidgetRenderMode === 'normal' %}
    <div class="page-header">
        <h1>
            Example page header <small>Subtext for header</small>
        </h1>
    </div>
{% endif %}
{% if sWidgetRenderMode === 'edition' %}
    <div class="page-header">
        <h1>
            Example page header <small>Subtext for header</small>
        </h1>
    </div>
{% endif %}
{% if sWidgetRenderMode === 'menu' %}
    <li class="ui-draggable widget-item well rounded">
        <h3>header</h3>
        <p>Un entête de page simple avec slogan.</p>
    </li>
{% endif %}