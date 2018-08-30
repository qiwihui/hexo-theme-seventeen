<script src="{{ asset('js/APlayer.min.js') }}"></script>
<script type="text/javascript">
    var player = undefined;

    $.getJSON('{{ theme.aplayer_list }}', function (json) {
        // APlayer.addMusic sucks
        // And APlayer does not provide any method to remove
        // the automatically added music [undefined]
        player = new APlayer({
            element: document.getElementById('music-player'),
            narrow: false,
            autoplay: false,
            showlrc: false,
            mutex: true,
            preload: 'none',
            theme: '#367FA9',
            music: json
        });

        console.log('Music player initialized', json);
    });

    $('#music-toggle').click(function () {
        if (player === undefined) {
            return;
        }

        $('.card').addClass('rotated').addClass('hide');

        // I don't know why APlayer 1.6.0 tends to
        // attach "height: 0px" style to .aplayer-list automatically
        $('.aplayer-list').removeAttr('style')

        $('#music-player').removeClass('hide');

        $('#abovesb').css('padding', 0);

        setTimeout(function () {
            $('#music-player').removeClass('rotated');
        }, 10);
    });

    $('body').on('click', '.aplayer-icon-menu', function () {
        $('.aplayer-list').removeClass('aplayer-list-hide');

        $('#music-player').addClass('rotated').addClass('hide');

        $('.card').removeClass('hide');

        setTimeout(function () {
            $('.card').removeClass('rotated');
        }, 10);

        $('#abovesb').css('padding', '7px 0 1px');
    });
</script>
