{% extends '_layout.swig' %}
{% import '_macro/article.swig' as postRender %}
{% import '_macro/page-pagination.swig' as paginateRender %}

{% block head %}
    {% if config.description %}
        <meta name="description" content="{{ config.description }}"/>
    {% endif %}
{% endblock %}
{% block title %} {{ config.title }} {% endblock %}
{% block content %}
    <section class="main-article">
        {% for post in page.posts %}
            {{ postRender.post(post) }}
        {% endfor %}
    </section>
{% endblock %}
{% block aside %}{% include '_partial/aside.swig' %}{% endblock %}
{% block pagination %}
    {{ paginateRender.pagePaginate(page.prev, page.next, page.prev_link, page.next_link) }}
{% endblock %}