<div class="post-meta clf">
  <span class="pmt pms fa-book">
    {% if post.categories and post.categories.length %}
      {{ list_categories(post.categories, {
        show_count: false,
        separator: ', ',
        style: 'fuck'
      }) }}
    {% else %}
      未分类
    {% endif %}
  </span>
  <span class="pmt pms fa-clock-o">{{ date(post.date, config.date_format) }}</span>

  <span class="pmt pms fa-tag">
    {% if post.tags and post.tags.length %}
      {{ list_tags(post.tags, {
        show_count: false,
        separator: ', ',
        style: 'fuck'
      }) }}
    {% else %}
      无标签
    {% endif %}
  </span>
</div>
