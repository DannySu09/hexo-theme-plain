<a class="head-flag" href="/">
    <img class="head-flag-img" src="{{ url_for('image/logo.png') }}" alt="{{ config.title }}"/>
</a>
<div class="head-search">
    <form action="//google.com/search" method="get" accept-charset="utf-8">
        <input class="head-search-input" type="search" name="q" placeholder="搜索本站文章..."/>
        <input type="hidden" name="q" value="site:{{ config.url }}"/>
    </form>
</div>
<nav class="head-nav">
    <a class="head-nav-item" href="/">首页</a>
    <a class="head-nav-item" href="/archives">归档</a>
    {#<a class="head-nav-item" href="/tags">标签</a>#}
    <a class="head-nav-item" href="/about">关于我</a>
</nav>