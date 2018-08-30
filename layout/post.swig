{% extends '_layout.swig' %}

{% block title %}{{ page.title }} - {{ config.title }}{% endblock %}

{% block page_class %}page-post{% endblock %}

{% block content %}

  {% set post_class = 'post post-type-' + page.type | default('normal') %}
  <article class="{{ post_class }} hentry">
    <h1 class="post-title">
      <a href="{{ url_for(page.path) }}">{{ page.title | default('无标题') }}</a>
    </h1>

    {% if is_post() %}{% include '_partials/expired-warning.swig' %}{% endif %}

    <div class="post-content">
      {% if page.toc !== false %}
      <div class="toc-container">
        {{ toc(page.content, { list_number: false }) }}
      </div>
      {% endif %}
      {{ page.content }}
      <div class="post-about"><p>除另有声明外，本博客文章均采用 <a href="http://creativecommons.org/licenses/by-nc-sa/3.0/cn/">知识共享(Creative Commons) 署名-非商业性使用-相同方式共享 3.0 中国大陆许可协议</a> 进行许可。</p></div>
    </div>

    {{ partial('_partials/post-meta.swig', {'post': page}) }}
  </article>

  {% if page.comments %}
    {% include '_partials/comment.swig' %}
  {% endif %}
{% endblock %}

{% block script_extra %}
  {% include '_third-party/disqus.swig' %}
{% endblock %}
