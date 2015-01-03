{% extends 'layout.swig' %}

{% block content %}
{{error}}

<article>
    {%  for paragraph in value.content.bodyModel.paragraphs %}
       {{ paragraph|element }}
    {% endfor %}
</article>

<nav class="navbar navbar-default navbar-fixed-bottom">
  <div class="container">
    <div class="btn-group">
      <button type="button" class="btn btn-default">
        <span class="glyphicon glyphicon-heart"></span>
      </button>
      <button type="button" class="btn btn-default">
         <span class="glyphicon glyphicon-share"></span>
      </button>
      <button type="button" class="btn btn-default">
        <span class="glyphicon glyphicon-comment"></span>
      </button>
    </div>
  </div>
</nav>
{% endblock %}
