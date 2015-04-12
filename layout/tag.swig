{% extends '_layout.swig' %}
{% import '_macro/article-info.swig' as renderArticleInfo %}

{% block title %} 「{{ page.tag }}」标签文章 {% endblock %}
{% block content %}
    <section class="main-article">
        <header class="ct-header">
            <h1 class="ct-title"><i class="fa fa-tag ct-icon u-hightLightText"></i><span class="u-hightLightText">「</span>{{ page.tag }}<span class="u-hightLightText">」</span>标签文章</h1>
        </header>
        {% for post in page.posts %}
            {{ renderArticleInfo.articleInfo(post) }}
        {% endfor %}
    </section>
{% endblock %}
{% block pagination %}
    {{ paginateRender.pagePaginate(page.prev, page.next, page.prev_link, page.next_link) }}
{% endblock %}