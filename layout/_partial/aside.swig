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