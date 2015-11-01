<!doctype html>
<!--[if lte IE 8]>
<html lang="zh-cmn-Hans" class="lte-ie8">
<![endif]-->
<html lang="zh-cmn-Hans">
<head>
    {% include '_partial/head.swig' %}
    {% block head %}{% endblock %}
    <title>{% block title %}{% endblock %}</title>
</head>
<body>
    <header class="head u-cf">
        {% include '_partial/header.swig' %}
    </header>
    <div class="main u-cf block">
        {% block content %}{% endblock %}
        {% block aside %}{% endblock %}
        {% block pagination %}{% endblock %}
    </div>
    <div class="bg-global" style="background-image: url('image/bg-default.jpg')"></div>
    <footer class="foot">
        <span class="foot-text">&spades;&nbsp;sunaiwen - 2015&nbsp;&clubs;&nbsp;Power by hexo&nbsp;&spades;<br/>
            Using theme:&nbsp;<a  target="_blank" href="http://github.com/sunaiwen/hexo-theme-plain">hexo-theme-plain</a></span>
    </footer>
    {% include '_partial/after-foot.swig' %}
</body>
</html>
