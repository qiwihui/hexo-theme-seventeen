/*
* @Author: prpr
* @Date:   2017-06-14 14:59:33
* @Last Modified by:   prpr
* @Last Modified time: 2017-06-14 15:01:57
*/

'use strict';

function gistTag(args, content) {
  var id = args.shift();
  var file = args.length ? '?file=' + args[0] : '';

  return '<script src="///gist/' + id + '.js' + file + '"></script>';
}

hexo.extend.tag.register('my_gist', gistTag);
