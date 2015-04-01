<!doctype html>
<html lang="zh-cmn-Hans">
<head>
    {% include '_partial/head.swig' %}
    <title>{% block title %}{% endblock %}</title>
</head>
<body>
    <header class="head u-cf">
        {% include '_partial/header.swig' %}
    </header>
    <main class="main u-cf block">
        {% block content %}{% endblock %}
        {% block aside %}{% endblock %}
        {% block pagination %}{% endblock %}
    </main>
    <div class="bg-global" style="background-image: url('image/bg-default.jpg')"></div>
    <footer class="foot">
        <span class="foot-text">&spades;&nbsp;sunaiwen - 2015&nbsp;&clubs;&nbsp;Power by hexo&nbsp;&spades;</span>
    </footer>
    {% include '_partial/after-foot.swig' %}
</body>
</html>