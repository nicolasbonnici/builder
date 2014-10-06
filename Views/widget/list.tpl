{% if aWidgets|exists %}
    {% for sWidgetNames, sWidgetMarkupPath in aWidgets %}
        {{sWidgetMarkupPath|safe}}
    {% endfor %}
{% endif %}