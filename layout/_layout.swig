<!doctype html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link rel="shortcut icon" href="favicon.png"/>
    <link rel="stylesheet" href="css/style.css"/>
    <title>雅阁</title>
</head>
<body>
    <header class="head u-cf">
        <a class="head-flag" href="/">
            <img class="head-flag-img" src="image/logo.png" alt="苏乃文的个人博客"/>
        </a>
        <div class="head-search">
            <form action="//google.com/search" method="get" accept-charset="utf-8">
                <input class="head-search-input" type="search" name="q" placeholder="搜索本站文章..."/>
            </form>
        </div>
        <nav class="head-nav">
            <a class="head-nav-item" href="/home">首页</a>
            <a class="head-nav-item" href="/archive">归档</a>
            <a class="head-nav-item" href="/tags">标签</a>
            <a class="head-nav-item" href="/about">关于我</a>
        </nav>
    </header>
    <main class="main u-cf block">
        <section class="main-article">
            {% for post in site.posts %}
                <article class="article">
                    <header class="article-head">
                        {% if post.title %}
                            <a class="article-title" href="{{ url_for(post.path) }}">{{ post.title }}</a>
                        {% else %}
                            <h1 class="article-title">{{ post.title }}</h1>
                        {% endif %}
                        <ul class="article-meta">
                            <li class="article-meta-item">
                                <i class="fa fa-clock-o ami-icon"></i>
                                <span class="ami-text">{{ post.date | date('Y-m-d') }}</span>
                            </li>
                            <li class="article-meta-item">
                                {% if post.categories.length %}
                                    <i class="fa fa-book ami-icon"></i>
                                    {% for category in post.categories  %}
                                        {% if category.path %}
                                            <a class="ami-text" href="{{ category.path }}">{{ category.name }}</a>
                                        {% else %}
                                            <span class="ami-text">{{ category.name }}</span>
                                        {% endif %}
                                    {% endfor %}
                                {% endif %}
                            </li>
                            <li class="article-meta-item">
                                {% if post.tags.length %}
                                    <i class="fa fa-tags ami-icon"></i>
                                    {% for tag in post.tags %}
                                        {% if tag.path %}
                                            <a class="ami-text" href="{{ tag.path }}">{{ tag.name }}</a>
                                        {% else %}
                                            <span class="ami-text">{{ tag.name }}</span>
                                        {% endif %}
                                    {% endfor %}
                                {% endif %}
                            </li>
                        </ul>
                    </header>
                    {% if post.excerpt %}
                        <div class="article-content">{{ post.excerpt }}</div>
                    {% else %}
                        <div class="article-content">{{ post.content }}</div>
                    {% endif %}
                    <footer class="article-footer">
                        <a class="article-footer-readFurther" href="{{ url_for(post.path) }}">继续阅读</a>
                    </footer>
                </article>
            {% endfor %}
        </section>
        <aside class="main-aside">
            <section class="main-aside-section aside">
                <h1 class="aside-title">分类</h1>
                <ul class="aside-list">
                    {% for category in site.categories %}
                        <li class="aside-list-item">
                            <a class="ali-text u-cf" href="{{ url_for(category.path) }}">{{ category.name }}&nbsp;<span class="ali-count u-hightLightText">{{ category.length }}</span></a>
                        </li>
                    {% endfor %}
                </ul>
            </section>
            <section class="main-aside-section aside">
                <h1 class="aside-title">标签</h1>
                <ul class="aside-list">
                    {% for tag in site.tags %}
                        <li class="aside-list-item">
                            <a class="ali-text u-cf" href="{{ url_for(tag.path) }}">{{ tag.name }}&nbsp;<span class="ali-count u-hightLightText">{{ tag.length }}</span></a>
                        </li>
                    {% endfor %}
                </ul>
            </section>
        </aside>
    </main>
    <div class="bg-global" style="background-image: url('image/bg-default.jpg')"></div>
</body>
</html>