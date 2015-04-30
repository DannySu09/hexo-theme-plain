{% extends '_layout.swig' %}
{% import '_macro/article-info.swig' as renderArticleInfo %}
{% import '_macro/page-pagination.swig' as renderPaination %}

{% block head %}
    <meta name="description" content="归档&nbsp;|&nbsp;共&nbsp;{{ site.posts.length }}&nbsp;篇文章"/>
{% endblock %}
{% block title %} 归档&nbsp;|&nbsp;共&nbsp;{{ site.posts.length }}&nbsp;篇文章 {% endblock %}

{% block content %}
    <section class="main-article">
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
    </section>
{% endblock %}
{% block pagination %}
    {{ renderPaination.pagePaginate(page.prev, page.next, page.prev_link, page.next_link) }}
{% endblock %}