<ul class="menu">
  {% for name, item in theme.menu_aside %}
    {% set itemName = name.toLowerCase() %}
    <li class="menu-item menu-item-{{ itemName }}">
      <a href="{{ url_for(item.path) }}" title="{{ item.title }}" rel="section">
        <i class="fa fa-{{ item.icon }}"></i>{{ item.name }}
      </a>
    </li>
  {% endfor %}
</ul>
