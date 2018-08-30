<div id="sidebar" class="fl">

  <div id="abovesb">
    <div class="card">
      <div class="gr center">

        <a href="{{ config.url }}">
        <img src="{{ theme.avatar }}" width="112" height="112"></a>
      </div>

      <div class="blogname">{{ config.title }}</div>
      <div class="blogdesc">{{ config.subtitle }}</div>

      <div class="sbmenu">
        <div class="menu-container">
          {% include 'menu-aside.swig' %}
        </div>
      </div>
    </div>
    {# Hidden Music Player #}
    <div id="music-player" class="aplayer hide rotated"></div>
  </div>

  <script type="text/javascript">nanobar.go(40);</script>

  <div id="sb">
    {% include 'widgets.swig' %}
  </div>

</div>
