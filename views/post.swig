{% extends 'layout.swig' %}

{% block content %}
{{error}}
<article class="u-minFullHeightControl postArticle is-languageTier1" lang="en" data-allow-notes="true">
  <section class="postWrapper postWrapper--contain">
   <div class="postWrapper-inner">
    <div class="postContent">
     <div class="postContent-inner">
      <div class="notesSource">
       <div class="postField postField--body">
        <section name="0eb7" class=" section--first">
         <div class="section-divider layoutSingleColumn">
          <hr class="section-divider">
         </div>
          <div class="section-content">
            <div class="section-inner layoutSingleColumn">
              {%  for paragraph in value.content.bodyModel.paragraphs %}
                 {{ paragraph|element }}
              {% endfor %}
           </div>
          </div>
        </section>
       </div>
      </div>
     </div>
    </div>
   </div>
  </section>
</article>
{% endblock %}
