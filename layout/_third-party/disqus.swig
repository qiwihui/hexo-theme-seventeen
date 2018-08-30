<script src="{{ asset('js/jquery.disqusloader.js') }}"></script>

<script type="text/javascript">
  $.disqusLoader('.disqus', {
    scriptUrl: '//{{ theme.disqus }}.disqus.com/embed.js',
    laziness: 0,
    preLoadCallback: function () {
        $('.disqus-notice').show()
    },
    disqusConfig: function () {
      this.callbacks.onReady = [function () {
        $('.disqus-notice').hide()
      }];
    }
  });
</script>
