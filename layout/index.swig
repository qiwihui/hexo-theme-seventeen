{% extends '_layout.swig' %}

{% block title %}{{ config.title }} {% endblock %}

{% block page_class %}
  {% if is_home() %} page-home {% endif %}
{% endblock %}

{% block content %}
  {% for post in page.posts %}
    {% set post_class = 'post post-type-' + post.type | default('normal') %}

    <article class="{{ post_class }} hentry">
      <h2 class="post-title">
        <a href="{{ url_for(post.path) }}">{{ post.title | default('无标题') }}</a>
      </h2>

      <div class="post-content">
        {% if post.excerpt %}
          {{ post.excerpt }}
          <a class="more-link" href="{{ url_for(post.path) }}#more">阅读全文&rarr;</a>
        {% elif theme.auto_excerpt.enable %}
          {{ post.content.substring(0, theme.auto_excerpt.length) }}

          {% if post.content.length > theme.auto_excerpt.length %}...{% endif %}
          <a class="more-link" href="{{ url_for(post.path) }}#more">阅读全文&rarr;</a>
        {% else %}
          {{ post.content }}
        {% endif %}
      </div>

      {% include '_partials/post-meta.swig' %}
    </article>
  {% endfor %}

  {% include '_partials/pagination.swig' %}
{% endblock %}
