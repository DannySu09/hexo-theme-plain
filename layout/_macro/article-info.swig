{% macro articleInfo(post) %}
    <article class="article is-articleMeta">
        <header class="article-head">
            <a class="article-title" href="{{ url_for(post.path) }}">{{ post.title }}</a>
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
                                <a class="ami-text" href="{{ url_for(category.path) }}">{{ category.name }}</a>
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
                                <a class="ami-text" href="{{ url_for(tag.path) }}">{{ tag.name }}</a>
                            {% else %}
                                <span class="ami-text">{{ tag.name }}</span>
                            {% endif %}
                        {% endfor %}
                    {% endif %}
                </li>
            </ul>
        </header>
    </article>
{% endmacro %}