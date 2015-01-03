{% extends 'layout.swig' %}

{% block content %}
  {{error}}
  <div class="blockGroup-list layoutSingleColumn">
    {%  for item in latestPosts %}
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title"><a href='/post/{{item.id}}' >{{ item.title }}</a></h3>
        </div>
        <div class="panel-body">
          <p>{{ item.virtuals.subtitle }}</p>
        </div>
      </div>
    {% endfor %}
  </div>
{% endblock %}
