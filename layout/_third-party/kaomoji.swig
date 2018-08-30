<style type="text/css">
    .menu-item-kaomoji a {
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }

    .info-rise {
        z-index: 99999;
        position: absolute;
        padding: 0 4px;
        border-radius: 1px;
        background-color: #f69;
        box-shadow: 0 0 1px rgba(0,0,0,0.1);
        color: #fff;
        text-align: center;
        font-size: 12px;
        line-height: 1.5;
        cursor: default
    }
</style>

<script type="text/javascript">
    var kaomoji_array = ["|∀ﾟ", "(´ﾟДﾟ`)", "(;´Д`)", "(｀･ω･)", "(=ﾟωﾟ)=", "| ω・´)", "|-` )", "|д` )", "|ー` )", "|∀` )", "(つд⊂)", "(ﾟДﾟ≡ﾟДﾟ)", "(＾o＾)ﾉ", "(|||ﾟДﾟ)", "( ﾟ∀ﾟ)", "( ´∀`)", "(*´∀`)", "(*ﾟ∇ﾟ)", "(*ﾟーﾟ)", "(　ﾟ 3ﾟ)", "( ´ー`)", "( ・_ゝ・)", "( ´_ゝ`)", "(*´д`)", "(・ー・)", "(・∀・)", "(ゝ∀･)", "(〃∀〃)", "(*ﾟ∀ﾟ*)", "( ﾟ∀。)", "( `д´)", "(`ε´ )", "(`ヮ´ )", "σ`∀´)", " ﾟ∀ﾟ)σ", "ﾟ ∀ﾟ)ノ", "(╬ﾟдﾟ)", "(|||ﾟдﾟ)", "( ﾟдﾟ)", "Σ( ﾟдﾟ)", "( ;ﾟдﾟ)", "( ;´д`)", "(　д ) ﾟ ﾟ", "( ☉д⊙)", "(((　ﾟдﾟ)))", "( ` ・´)", "( ´д`)", "( -д-)", "(>д<)", "･ﾟ( ﾉд`ﾟ)", "( TдT)", "(￣∇￣)", "(￣3￣)", "(￣ｰ￣)", "(￣ . ￣)", "(￣皿￣)", "(￣艸￣)", "(￣︿￣)", "(￣︶￣)", "ヾ(´ωﾟ｀)", "(*´ω`*)", "(・ω・)", "( ´・ω)", "(｀・ω)", "(´・ω・`)", "(`・ω・´)", "( `_っ´)", "( `ー´)", "( ´_っ`)", "( ´ρ`)", "( ﾟωﾟ)", "(oﾟωﾟo)", "(　^ω^)", "(｡◕∀◕｡)", "/( ◕‿‿◕ )\\", "ヾ(´ε`ヾ)", "(ノﾟ∀ﾟ)ノ", "(σﾟдﾟ)σ", "(σﾟ∀ﾟ)σ", "|дﾟ )", "┃電柱┃", "ﾟ(つд`ﾟ)", "ﾟÅﾟ )　", "⊂彡☆))д`)", "⊂彡☆))д´)", "⊂彡☆))∀`)", "(´∀((☆ミつ"];
    var hits = 0;
    var start_time = 0;

    $('.menu-item-kaomoji a').click(function(e) {

        if (start_time == 0) start_time = Date.now();

        hits ++;

        if (hits % 5 === 0) {
            index = Math.floor(Math.random() * kaomoji_array.length);
            $(this).html(kaomoji_array[index]);
        }

        x = $(this).offset().left + $(this).width();
        y = $(this).offset().top + $(this).height();

        if (hits % 50 === 0) {
            var duration = 2000;
            // actions per minite
            var apm = parseInt(hits / ((Date.now() - start_time) / 1000) * 60);
            start_time = 0;
            hits = 0;
            hit = $('<span class="info-rise" style="border: 1px solid #ffd6e4;font-size:13.5px;z-index:9999999;">手速：'+apm+' actions/min </span>');

            console.log('APM: '+apm);
        } else {
            var duration = 500;
            hit = $('<span class="info-rise">+1</span>');
        }

        hit.appendTo($("body"));

        hit.css({
            opacity: 0,
            left: x,
            top: y
        }).animate({
            opacity: 1,
            top: y - 16
        }, 250).animate({
            opacity: 1,
            top: y - 20
        }, duration).animate({
            top: y - 20
        }, duration).animate({
            opacity: 0,
            top: y - 32
        }, 250, function() {
            return $(this).remove();
        });

    });
</script>
