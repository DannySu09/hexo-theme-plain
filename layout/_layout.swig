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
        {% include '_partial/aside.swig' %}
    </main>
    <div class="bg-global" style="background-image: url('image/bg-default.jpg')"></div>
    <footer class="foot">
        <p class="foot-text">sunaiwen 2015</p>
    </footer>
</body>
</html>