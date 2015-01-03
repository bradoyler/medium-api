{% extends 'layout.swig' %}

{% block content %}
  {{error}}
  <div class="blockGroup-list layoutSingleColumn">
    {%  for item in value %}
     <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title"><a href='/post/{{item.id}}' >{{ item.title }}</a></h3>
        </div>
        <div class="panel-body">
          <p>{{ item.virtuals.subtitle }}</p>
        </div>
        <div class="panel-footer">
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
      </div>
    {% endfor %}
  </div>
{% endblock %}
