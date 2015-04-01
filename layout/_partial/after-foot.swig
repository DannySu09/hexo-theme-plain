<script src="{{ url_for('js/prism.js') }}"></script>
{% if theme.trackId %}
    {% include '../_script/google-analysis.swig' %}
{% endif %}

{% if theme.commentType == 'duoshuo' %}
    {% include '../_script/comment-duoshuo.swig' %}
{% elseif theme.commentType == 'disqus' %}
{% endif %}