<a class="head-flag" href="{{ url_for(config.root) }}">
    <img class="head-flag-img" src="{{ url_for('image/logo.png') }}" alt="{{ config.title }}"/>
</a>
<div class="head-search">
    <button class="head-search-close"><i class="fa fa-close"></i></button>
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
<nav class="head-nav">
    <a class="head-nav-item" href="{{ url_for(config.root) }}">首页</a>
    <a class="head-nav-item" href="{{ url_for(config.root + config.archive_dir) }}">归档</a>
    <a class="head-nav-item" href="{{ url_for(theme.about_url) }}">关于我</a>
    <a class="head-nav-item hni-search" href="javascript:void(0)"><i class="fa fa-search"></i></a>
</nav>