{% macro postPaginate(prevLink, nextLink,  prevTitle, nextTitle) %}
    <footer class="pagination pagination--post u-cf">
        {% if prevLink.length > 0 %}
            <a class="pagination-item pagination-item--previous" href="{{ url_for(prevLink) }}">
                <i class="fa fa-angle-left u-hightLightText"></i>
                {% if prevTitle %}
                    上一篇：{{ prevTitle }}
                {% else %}
                    上一篇
                {% endif %}
            </a>
        {% endif %}
        {% if prevLink.length > 0 && nextLink.length > 0 %}
        <span class="pagination-break u-hightLightText">&#9787;</span>
        {% endif %}
        {% if nextLink.length > 0 %}
            <a class="pagination-item pagination-item--next" href="{{ url_for(nextLink) }}">
                {% if nextTitle %}
                    下一篇：{{ nextTitle }}
                {% else %}
                    下一篇
                {% endif %}
                <i class="fa fa-angle-right u-hightLightText"></i>
            </a>
        {% endif %}
    </footer>
{% endmacro %}