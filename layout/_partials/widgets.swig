{# For normal widget, use id `sbnormal` instead of `sbpin` which for pinned widget #}
<div id="sbpin">
  {# TOC Widget #}
  {% if (is_post() || is_page()) && page.toc !== false %}
  <div class="clf widget-item widget-toc">
    <h3 class="widget-title">文章目录</h3>
    <div class="textwidget">
      <div class="toc-container">
        {{ toc(page.content, { list_number: false }) }}
      </div>
    </div>
  </div>
  {% endif %}

  {# Hitokoto Widget #}


  {# Do-you-like-me Widget #}
  {# <div class="clf widget-item widget_text">
    <div class="textwidget">
      <div class="like-widget">
        <p class="like-title">Do you like me ?</p>
        <div style="margin: -3px 0 -2px;">
          <a class="like-vote">
            <i id="heart" class="fa fa-heart-o"></i> <span id="count"><span>
          </a>
        </div>
      </div>
    </div>
  </div> #}

</div>
