<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1"/>
{% if config.description %}
<meta name="description" content="{{ config.description }}"/>
{% endif %}
<link rel="shortcut icon" href= "{{ url_for('favicon.png') }}"/>
<link rel="stylesheet" href="{{ url_for('css/style.css') }}"/>
<link rel="stylesheet" href="{{ url_for('css/mono-blue.css') }}"/>
<script src="{{ url_for('js/modernizr-shiv.js') }}"></script>