{% extends '_layout.swig' %}

{% block title %}标签: {{ page.tag }} - {{ config.title }}{% endblock %}

{% block page_class %}page-tag{% endblock %}

{% block content %}
  <div class="hentry">
    <h1 class="post-title">{{ page.tag }} <small>（此标签下共计 {{ site.tags.findOne({name: page.tag}).length }} 篇文章）</small></h1>
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
