{% if page.prev or page.next %}
  <div id="p-nav" class="clf">
    <nav class="navigation pagination" role="navigation">
      <div class="nav-links">
          {{
            paginator({
              mid_size: 2
            })
          }}
      </div>
    </nav>
  </div>
{% endif %}



