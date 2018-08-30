<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

{# Theme color for Chrome on Lollipop #}
<meta name="theme-color" content="{{ chromeThemeColor(theme.color) }}">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="HandheldFriendly" content="True" />

{# SEO #}
<meta name="description" content="{{ config.description }}" />
{% if page.keywords %}
  <meta name="keywords" content="{{ page.keywords }}" />
{% elif page.tags and page.tags.length %}
  <meta name="keywords" content="{% for tag in page.tags %}{{ tag.name }},{% endfor %}" />
{% elif theme.keywords %}
  <meta name="keywords" content="{{ theme.keywords }}" />
{% endif %}

{# Google Site Verification #}
{% if theme.google_site_verification %}
<meta name="google-site-verification" content="{{ theme.google_site_verification}}" />
{% endif %}

{# Do not transform my site you motherfucking Baidu #}
<meta http-equiv="Cache-Control" content="no-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">

{# Powered by Hexo #}
<meta name="generator" content="Hexo" />

{# Open Graph Resources #}
{{
  open_graph({
    twitter_id: theme.twitter_id,
    google_plus: theme.google_plus,
    fb_admins: theme.fb_admins,
    fb_app_id: theme.fb_app_id
  })
}}

{# RSS Feed #}
{% if theme.rss === '' and config.feed and config.feed.path %}
  {% set theme.rss = config.feed.path %}
{% endif %}

{% if theme.rss %}
  {{ feed_tag(url_for(theme.rss), {'type': 'application/atom+xml'}) }}
{% endif %}

{% if theme.canonical %}
  <link rel="canonical" href="{{ config.url }}/{{ page.canonical_path.replace('index.html', '') }}"/>
{% endif %}

{# Customize your shortcut icon and app icon here #}
<link rel="shortcut icon" href="{{ asset(theme.favicon) }}">
<link rel="icon" sizes="192x192" href="{{ asset(theme.icon) }}" />
<link rel="apple-touch-icon" sizes="144x144" href="{{ asset(theme.touch_icon) }}" />

{# Styles #}
{{ css([
  asset('css/main.css'),
  asset('libs/fancybox/source/jquery.fancybox.css'),
  asset('libs/font-awesome/css/font-awesome.min.css')
]) }}

{% include 'fonts.swig' %}
