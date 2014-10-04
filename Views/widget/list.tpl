{% for sWidgetNames, sWidgetMarkupPath in aWidgets %}
    {{sWidgetMarkupPath|safe}}
{% endfor %}