{% macro post(post, isFull) %}
<article class="article {% if isFull == 'full' %} is-articleFull {% endif %}">
    <header class="article-head">
        {% if isFull == 'full' %}
            <h1 class="article-title">{{ post.title }}</h1>
        {% else %}
            <a class="article-title" href="{{ url_for(post.path) }}">{{ post.title }}</a>
        {% endif %}
        <ul class="article-meta">
            <li class="article-meta-item">
                <i class="fa fa-clock-o ami-icon"></i>
                <span class="ami-text">{{ post.date | date('Y-m-d') }}</span>
            </li>
            <li class="article-meta-item">
                {% if post.categories.length %}
                    <i class="fa fa-book ami-icon"></i>
                    {% for category in post.categories  %}
                        {% if category.path %}
                            <a class="ami-text" href="{{ category.path }}">{{ category.name }}</a>
                        {% else %}
                            <span class="ami-text">{{ category.name }}</span>
                        {% endif %}
                    {% endfor %}
                {% endif %}
            </li>
            <li class="article-meta-item">
                {% if post.tags.length %}
                    <i class="fa fa-tags ami-icon"></i>
                    {% for tag in post.tags %}
                        {% if tag.path %}
                            <a class="ami-text" href="{{ tag.path }}">{{ tag.name }}</a>
                        {% else %}
                            <span class="ami-text">{{ tag.name }}</span>
                        {% endif %}
                    {% endfor %}
                {% endif %}
            </li>
        </ul>
    </header>
    {% if post.excerpt && isFull != 'full' %}
        <div class="article-content">{{ post.excerpt }}</div>
        <footer class="article-footer">
            <a class="article-footer-readFurther" href="{{ url_for(post.path) }}">继续阅读</a>
        </footer>
    {% else %}
        <div class="article-content">{{ post.content }}</div>
    {% endif %}
</article>
{% endmacro %}