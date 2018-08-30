<article class="post post-type-{{ post.type | default('normal') }}">
  <header class="post-header">

    <h3 class="post-title">
      <a class="post-title-link" href="{{ url_for(post.path) }}" itemprop="url">
        <span itemprop="name">{{ post.title | default('无标题') }}</span>
      </a>
    </h3>

    <div class="post-meta">
      <time class="post-time" itemprop="dateCreated"
            datetime="{{moment(post.date).format() }}"
            content="{{date(post.date, config.date_format) }}" >
        {{date(post.date, 'MM-DD') }}
      </time>
    </div>

  </header>
</article>
