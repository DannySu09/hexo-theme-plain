{% extends '_layout.swig' %}
{% import '_macro/article.swig' as postRender %}

{% block title %} {{ page.title }} {% endblock %}
{{ page.title }}
{% block content %}
    {{ postRender.post(page) }}
{% endblock %}