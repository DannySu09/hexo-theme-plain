{% extends '_layout.swig' %}
{% import '_macro/article.swig' as postRender %}
{% import '_macro/post-pagination.swig' as paginateRender %}

{% block title %} {{ page.title }} {% endblock %}
{% block content %}
    <section class="main-article">
        {{ postRender.post(page, 'full') }}
        {{ paginateRender.postPaginate(page.prev.path, page.next.path, page.prev.title, page.next.title) }}
    </section>
{% endblock %}
{% block aside %}{% include '_partial/aside.swig' %}{% endblock %}