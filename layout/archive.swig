{% extends '_layout.swig' %}
{% import '_macro/article-info.swig' as renderArticleInfo %}
{% import '_macro/page-pagination.swig' as renderPaination %}

{% block title %} 所有文章 {% endblock %}

{% block content %}
    {% for post in page.posts %}
        {% set year %}
        {% set post.year = post.date | date('Y') %}

        {% if year != post.year %}
            {% set year = post.year %}
            <header class="archive-header">
                <h1 class="archive-year">{{ year }}年的文章</h1>
            </header>
        {% endif %}
        {{ renderArticleInfo.articleInfo(post) }}
    {% endfor %}
{% endblock %}
{% block pagination %}
    {{ renderPaination.pagePaginate(page.prev, page.next, page.prev_link, page.next_link) }}
{% endblock %}