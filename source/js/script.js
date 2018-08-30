jQuery(document).ready(function($){
    var $body = (window.opera) ? (document.compatMode == "CSS1Compat" ? $('html') : $('body')) : $('html,body');

    // 顶部搜索框
    var tgWidth = $('#toggler').width();
    $('#tg-s').click(function() { // jQuery 1.8 去除了 toggle() 方法
        if (!$(this).hasClass('tg-actived')) {
            $('#searchform-top').animate({width: '196px'}, 210);
            // $('#toggler').animate({width: '0'}, 210);
            $('#tg-s a').css('color', '#FFF');
            $(this).addClass('tg-actived');
        } else {
            $('#searchform-top').animate({width: '0'}, 210);
            // $('#toggler').animate({width: tgWidth}, 210);
            $('#tg-s a').css('color', '');
            $(this).removeClass('tg-actived');
        }
    });

    // 响应式顶部二级菜单，针对移动端触控操作优化
    var listenHoverIntent = function(){
        $('.topmenu .menu-item:has(.sub-menu) > a').click(function(event) {
            if (!$(this).parent().hasClass('touched')) {
                event.preventDefault();
            }
        });
        $('.topmenu .menu-item:has(.sub-menu)').hoverIntent({
            over: function() {
                $(this).find('.sub-menu').stop().slideDown(210);
                $(this).addClass('touched');
            },
            out: function() {
                $(this).find('.sub-menu').stop().slideUp(210);
                $(this).removeClass('touched');
            },
            timeout: 180,
            sensitivity: 7,
            interval: 100
        });
    };
    listenHoverIntent();

    $('#tg-m').click(function(){
        if (!$(this).hasClass('tg-actived')) {
            $('.topmenu').slideDown(210);
            $('#tg-m a').css('color', '#FFF');
            $(this).addClass('tg-actived');
        } else {
            $('.topmenu').slideUp(210);
            $('#tg-m a').css('color', '');
            $(this).removeClass('tg-actived');
        }
    });

    // 固定小工具容器
    $('#container').css('min-height', $('#sidebar').height() + 'px');

    // 计算滚动条宽度
    var oP = document.createElement('p'),
        styles = {
            width: '100px',
            height: '1px',
            overflowY: 'scroll'
        }, i, scrollbarWidth;
    for (i in styles) oP.style[i] = styles[i];
    document.body.appendChild(oP);
    scrollbarWidth = oP.offsetWidth - oP.clientWidth;
    document.body.removeChild(oP);

    var resizeHandler = function () {
        $('#sbpin').css('width', $('#sbnormal').width() + 'px');
        if ($(document).width() + scrollbarWidth >= 600) {
            $('.topmenu').show();

            $('#sbpin').affix({
                offset: {
                    top: function () {
                        return $('#abovesb').offset().top + $('#abovesb').outerHeight()
                    }
                }
            });
        } else {
            $('.topmenu').hide();
        }
    }

    // 窗口大小调整时需要重绘的样式
    $(window).ready(resizeHandler).resize(resizeHandler);

    // Unslider
    $('.banner').unslider({speed: 490, delay: 3500, keys: true, dots: true, fluid: true});

    // 返回顶部
    (function registerBackToTop() {
        var THRESHOLD = 150;
        var $top = $('.back-to-top');

        $(window).on('scroll', function () {
            $top.toggleClass('back-to-top-on', window.pageYOffset > THRESHOLD);
        });

        $top.on('click', function () {
            $body.animate({scrollTop: 0}, 700, 'easeOutQuad');
        });
    })();

    // Wrap images with Fancybox
    $('.post-content img')
        .not('[hidden]')
        .each(function () {
            var $image = $(this);
            var imageTitle = $image.attr('title');
            var $imageWrapLink = $image.parent('a');

            if ($imageWrapLink.size() < 1) {
                    var imageLink = ($image.attr('data-original')) ? this.getAttribute('data-original') : this.getAttribute('src');
                $imageWrapLink = $image.wrap('<a href="' + imageLink + '"></a>').parent('a');
            }

            $imageWrapLink.addClass('fancybox fancybox.image');
            $imageWrapLink.attr('rel', 'group');

            if (imageTitle) {
                $imageWrapLink.append('<p class="image-caption">' + imageTitle + '</p>');

                //make sure img title tag will show correctly in fancybox
                $imageWrapLink.attr('title', imageTitle);
            }
        });

    $('.fancybox').fancybox({
        helpers: {
            overlay: {
                locked: false
            }
        }
    });

    hljs.initHighlightingOnLoad();
});
