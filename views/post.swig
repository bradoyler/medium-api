{% extends 'layout.swig' %}

{% block content %}
{{error}}
  <h1>{{ value.title }}</h1>
  <h3>{{ value.content.subtitle }}</h3>
  {%  for paragraph in value.content.bodyModel.paragraphs %}
    <p>{{ paragraph.text}}</p>
  {% endfor %}
{% endblock %}
