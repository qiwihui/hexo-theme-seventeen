{% set days = -page.updated.diff(moment(), 'days') %}

{% if days > 180 %}
  <div class="alert alert-warning expired-message">
    <p>本文最后更新于 {{ days }} 天前（{{ page.updated.format('YYYY-MM-DD') }}），其中的信息可能已经有所发展或是发生改变。</p>
  </div>
{% endif %}

{% if days > 365 %}
  <div class="alert alert-danger expired-message">
    <p>请注意，本文最后更新于 {{ days }} 天前，文中信息极有可能已经过期且不再适用于现阶段。</p>
  </div>
{% endif %}
