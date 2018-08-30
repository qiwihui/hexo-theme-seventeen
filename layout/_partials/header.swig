<div id="header" class="wc center">
  <div class="logo-container left">
    {# Blog Logo #}
    <div class="logo left">
      <a href="{{ config.url }}"><img src="{{ asset(theme.logo) }}"></a>
    </div>
  </div>

  <div class="social right">
    {# Search Form #}
    <div class="ico right" id="tg-s"><a href="javascript:void()" class="fa fa-search"></a></div>
    <form role="search" method="get" id="searchform-top" action="https://www.google.com/search">
      <input type="hidden" name="sitesearch" value="{{ config.url }}">
      <input type="text" name="q" id="s-top" placeholder="搜一搜 (ゝω·)☆ " />
    </form>

    {# Social Icons #}
    <div id="toggler" class="right">
      {% if theme.social %}
        {% for name, link in theme.social %}
          <div class="ico">
            <a href="{{ link }}" target="_blank" title="{{ name }}" class="fa fa-{{ name | lower }}"></a>
          </div>
        {% endfor %}
      {% endif %}
      <div class="ico">
        <a href="{{ theme.rss }}" target="_blank" class="fa fa-rss" ></a>
      </div>
    </div>

    <div class="ico right" id="tg-m"><a href="javascript:;" class="fa fa-bars"></a></div>
  </div>

  <div class="topmenu left">
    <div class="menu-container">
      {% include 'menu-top.swig' %}
    </div>
  </div>
  <div class="left clf"></div>

</div>
