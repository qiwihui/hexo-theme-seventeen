{% extends '_layout.swig' %}

{% block title %}归档 - {{ config.title }}{% endblock %}

{% block page_class %}page-archive{% endblock %}

{% block content %}
  <div class="hentry">
    <h1 class="post-title">归档 Archive <small>（目前共计 {{ site.posts.length }} 篇文章）</small></h1>
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
