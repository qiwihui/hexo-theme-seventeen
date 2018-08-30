<style type="text/css">
    .p-load-gist {
        margin: 25px 0 25px !important;
        text-align: center;
    }
</style>

<script type="text/javascript">
    $('.load-gist').on('click', function() {
        var gist = {
            url: '//work.prinzeugen.net/gist/printempw/' + $(this).data('hash') + '.json?callback=?',
            dom: this
        };

        $.getJSON(gist.url, function(data) {
            gist.style      = document.createElement('link');
            gist.style.type = 'text/css';
            gist.style.rel  = 'stylesheet';
            gist.style.href = data.stylesheet;

            document.getElementsByTagName('HEAD')[0].appendChild(gist.style);

            $(gist.dom).after(data.div).remove();
        });
    });
</script>
