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
            <h1 class="archive-year">{{ year }}</h1>
        {% endif %}
        {{ renderArticleInfo.articleInfo(post) }}
    {% endfor %}
{% endblock %}
{% block pagination %}
    {{ renderPaination.pagePaginate(page.prev, page.next) }}
{% endblock %}