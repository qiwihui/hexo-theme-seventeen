{% extends '_layout.swig' %}

{% block title %}分类: {{ page.category }} - {{ config.title }}{% endblock %}

{% block page_class %}page-category{% endblock %}

{% block content %}
  <div class="hentry">
    <h1 class="post-title">{{ page.category }} <small>（此分类下共计 {{ site.categories.findOne({name: page.category}).length }} 篇文章）</small></h1>
    <section class="posts-collapse">
    {% for post in page.posts %}

      {# Show year #}
      {% set year %}
      {% set post.year = date(post.date, 'YYYY') %}

      {% if post.year !== year %}
        {% set year = post.year %}
        <div class="collection-title">
          <h2 class="archive-year motion-element" id="archive-year-{{ year}}">{{ year }}</h2>
        </div>
      {% endif %}
      {# endshow #}

      {{ partial('_partials/post-collapse.swig', {'post': post}) }}

    {% endfor %}
    </section>
  </div>

  {% include '_partials/pagination.swig' %}
{% endblock %}
