'use strict';

// var version = ("0000" + (Math.random()*Math.pow(36,4) << 0).toString(36)).slice(-4);

var url_for = function (path) {
    return hexo.extend.helper.store['url_for'].call(hexo, path)
}

hexo.extend.helper.register('asset', (path) => {
    // return url_for(path) + '?v=' + version;
    return url_for(path);
});

// For Chrome
hexo.extend.helper.register('chromeThemeColor', (color) => {
    let map = {
        'lightblue':     "#3C8DBC",
        'lightgreen':    "#11A664",
        'red':           "#E74C3C",
        'orange':        "#FF8800",
        'pink':          "#A77A94",
        'purple':        "#6A5A8C"
    };

    return map[color];
});

hexo.extend.helper.register('nanobarThemeColor', (color) => {
    let map = {
        'lightblue':     "#BEDBEC",
        'lightgreen':    "#025F27",
        'red':           "#B51506",
        'orange':        "#E23300",
        'pink':          "#7B4967",
        'purple':        "#453A5E"
    };

    return map[color];
});
