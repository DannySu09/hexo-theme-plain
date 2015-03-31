{% extends '_layout.swig' %}
{% import '_macro/article-info.swig' as renderArticleInfo %}

{% block title %} 「{{ page.category }}」分类下的文章 {% endblock %}
{% block content %}
    {# ct = category&tag #}
    <header class="ct-header">
        <h1 class="ct-title"><i class="fa fa-book ct-icon"></i><span class="u-hightLightText">「</span>{{ page.category }}<span class="u-hightLightText">」</span>分类下的文章</h1>
    </header>
    <section class="main-article">
        {% for post in page.posts %}
            {{ renderArticleInfo.articleInfo(post) }}
        {% endfor %}
    </section>
{% endblock %}