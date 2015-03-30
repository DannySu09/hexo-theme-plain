{% extends '_layout.swig' %}
{% import '_macro/article.swig' as postRender %}

{% block title %} {{ config.title }} {% endblock %}
{% block content %}
    <section class="main-article">
        {% for post in site.posts %}
            {{ postRender.post(post) }}
        {% endfor %}
    </section>
{% endblock %}