/*
* Almostly copied from hexo-theme-next.
*
* @Date:   2017-06-14 14:45:00
* @Last Modified by:   prpr
* @Last Modified time: 2017-06-14 14:53:21
*
*/

/* global hexo */
// Class: default, primary, success, info, warning, danger
// Usage (no need to write this in 1 line if u want see any bugs):
// {% alert class %}
// Content
// {% endalert %}

'use strict';

function alert(args, content) {
  return '<div class="alert alert-' + args.join(' ') + '">' +
            hexo.render.renderSync({
                text: content,
                engine: 'markdown'
            }) +
        '</div>';
}

hexo.extend.tag.register('alert', alert, {ends: true});
