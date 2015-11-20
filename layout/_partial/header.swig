<section class="head-flag">
    <h1>
        <a href="{{ url_for(config.root) }}">
            {% if theme.avatar_url %}
                <img class="head-flag-img" src="{{ url_for(theme.avatar_url) }}" alt="{{ config.title }}"/>
            {% else %}
                <img class="head-flag-img" src="{{ url_for('image/logo.png') }}" alt="{{ config.title }}"/>
            {% endif %}
        </a>
    </h1>
</section>
<nav class="head-nav">
    <a class="head-nav-item" href="{{ url_for(config.root) }}">首页</a>
    <a class="head-nav-item" href="{{ url_for(config.root + config.archive_dir) }}">归档</a>
    <a class="head-nav-item" href="{{ url_for(config.root + theme.aboutUrl) }}">关于我</a>
    <a id="j-nav-searchBtn" class="head-nav-item hni-search" href="javascript:void(0)">
        <i class="fa fa-search"></i>
    </a>
</nav>
<div id="j-searchBox" class="head-search">
    <button id="j-search-closeBtn" class="head-search-close"><i class="fa fa-close"></i></button>
    <form action="//google.com/search" method="get" accept-charset="utf-8">
        <input id="j-searchScope" type="hidden" name="q" value="{{ config.url }}"/>
        <input class="head-search-input" type="search" name="q" placeholder="搜索本站文章..."/>
        <button class="head-search-btn" type="submit"><i class="fa fa-search"></i></button>
    </form>
    <script>
        var scopeInput = document.getElementById('j-searchScope');
        scopeInput.value = 'site:' + scopeInput.value.replace(/^https?:\/\//, '');
    </script>
</div>
