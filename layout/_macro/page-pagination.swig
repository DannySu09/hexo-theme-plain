{% macro pagePaginate(prevIndex, nextIndex) %}
    {# Because of an issue of hexo page generating, divide a special pagination block for index page #}
    <footer class="pagination">
        {% if prevIndex > 0 %}
            <a class="pagination-item" href="{% if prevIndex > 1 %}/page/{{ prevIndex }}{% else %}/{% endif %}">上一页</a>
        {% endif %}
        {% if nextIndex > 0 %}
            <a class="pagination-item" href="/page/{{ nextIndex }}">下一页</a>
        {% endif %}
    </footer>
{% endmacro %}