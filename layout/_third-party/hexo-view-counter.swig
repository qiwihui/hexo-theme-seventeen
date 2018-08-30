<script type="text/javascript">
    String.prototype.cleanSlug = function () {
        var search = '/index.html';

        if (this.indexOf(search) === -1) {
            return this.slice(0, -1)
        } else {
            return this.replace(search, '');
        }
    }

    var Counter = function (url) {
        this.baseCounterUrl = url;

        this.initAllPostViews = function () {
            var self = this;

            // 遍历 post-view
            $('[id=post-view]').each(function () {
                // 默认 PV 设为 0
                var span = $(this).html(0);
                var slug = span.attr('data').cleanSlug();

                self.getPostViewBySlug(slug, function (pv) {
                    span.html(pv);
                })
            });
        }

        this.getPostViewBySlug = function (slug, callback) {
            var url = this.baseCounterUrl + '/get/' + slug;

            $.getJSON(url, function (data) {
                callback(data.pv);
            });
        }

        this.incPostViewBySlug = function (slug) {
            var url = this.baseCounterUrl + '/increase/' + slug;

            $.post(url, {}, function (data) {
                $('#post-view').html(data.pv);
            });
        }
    }

    var counter = new Counter('https://work.prinzeugen.net/hexo-view-counter');

    $(document).ready(function () {
        counter.initAllPostViews();
    });
</script>

{% if (is_post() || page.layout == 'page') %}
<script type="text/javascript">
    counter.incPostViewBySlug(
        $('#post-view').attr('data').cleanSlug()
    );
</script>
{% endif %}
