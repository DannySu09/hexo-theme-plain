<script src="{{ url_for('js/lib/highlight.js') }}"></script>
<script src="{{ url_for('js/lib/zoomerang.js') }}"></script>
<script src="{{ url_for('js/app.js') }}"></script>
<script>hljs.initHighlightingOnLoad();</script>
{% include '../_script/comment-duoshuo.swig' %}
{% if theme.track_id %}
    {% include '../_script/google-analysis.swig' %}
{% endif %}
