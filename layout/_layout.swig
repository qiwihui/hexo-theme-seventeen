<!DOCTYPE html>
<html lang="{{ config.language }}">
  <head>
    {% include '_partials/head.swig' %}
    <title>{% block title %}{% endblock %}</title>
  </head>

  <body lang="{{ config.language }}">

    <div id="pageframe" class="fw">
      {% include '_partials/nanobar.swig' %}

      <div id="top" class="fw clf">
        {% include '_partials/header.swig' %}
      </div>

      <div id="container" class="wc center clf {% block page_class %}{% endblock %}">
        <script type="text/javascript">nanobar.go(20);</script>

        <div id="content" class="wp">
          {% block content %}{% endblock %}
        </div>

        {% include '_partials/sidebar.swig' %}
      </div><!-- #container -->

      <div id="foot" class="fw">
        {% include '_partials/footer.swig' %}
      </div>

    </div><!-- #pageframe.fw -->
    <script type="text/javascript">nanobar.go(80);</script>

    <div class="back-to-top">
      <span class="fa fa-angle-up"></span>
    </div>

    {% include '_partials/scripts.swig' %}
    {% include '_third-party/google-analytics.swig' %}
    {% include '_third-party/kaomoji.swig' %}
    {% include '_third-party/aplayer.swig' %}

    {% block script_extra %}{% endblock %}

    <script type="text/javascript">nanobar.go(100);</script>
  </body>
</html>
