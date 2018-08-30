<script type="text/javascript">
    $("a.like-vote").mouseover(function() {
        $("#heart").removeClass("fa-heart-o");
        $("#heart").addClass("fa-heart");
    });

    $("a.like-vote").mouseout(function() {
        $("#heart").removeClass("fa-heart");
        $("#heart").addClass("fa-heart-o");
    });

    $.getJSON("//work.prinzeugen.net/do-you-like-me/like.php?action=get", function (data) {
        $('#count').html(data.like);
    });

    $('.like-vote').click(function () {
        if ($('.like-title').html() === 'Do you like me ?') {
            $.getJSON("//work.prinzeugen.net/do-you-like-me/like.php?action=add", function (data) {
                if (data.success) {
                    $('#count').fadeOut(200);
                    $('#count').html(String(parseInt(data.like)));
                    $('#count').fadeIn(200);
                    $('.like-title').html('我也喜欢你 (*≧▽≦)');
                }
                else {
                    $('.like-title').html('你的爱我已经感受到了~');
                }
            });
        }
    });
</script>
