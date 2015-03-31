{% extends '_layout.swig' %}
{% import '_macro/article.swig' as postRender %}

{% block title %} {{ page.title }} {% endblock %}
{% block content %}
    <section class="main-article">
        {{ postRender.post(page, 'full') }}
    </section>
{% endblock %}
{% block aside %}{% include '_partial/aside.swig' %}{% endblock %}