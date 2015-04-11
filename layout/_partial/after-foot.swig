<script src="{{ url_for('js/lib/highlight.js') }}"></script>
<script src="{{ url_for('js/app.js') }}"></script>
<script>hljs.initHighlightingOnLoad();</script>
{% if theme.trackId %}
    {% include '../_script/google-analysis.swig' %}
{% endif %}

{% if theme.commentType == 'duoshuo' %}
    {% include '../_script/comment-duoshuo.swig' %}
{% elseif theme.commentType == 'disqus' %}
{% endif %}