/*
* @Author: prpr
* @Date:   2017-06-14 15:02:51
* @Last Modified by:   prpr
* @Last Modified time: 2017-06-14 15:04:02
*/

'use strict';

/**
 * Click button to load Gist.
 */
function gistTag(args, content) {
  var hash = args.shift();

  return '<p class="p-load-gist"><button class="btn btn-default load-gist" data-hash="' + hash + '">点击以加载 Gist（无法加载时请翻墙）</button></p>';
}

hexo.extend.tag.register('lazy_gist', gistTag);
