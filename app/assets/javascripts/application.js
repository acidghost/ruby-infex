// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= stub document.tagged
//= require_tree .

jQuery.fn.outerHTML = function() {
    return jQuery('<div />').append(this.eq(0).clone()).html();
};

Array.prototype.logb = function () {
    for(var i=0; i<this.length; i++) {
        console.log('%c# ' + this[i], 'background: #222; color: #bada55');
    }
};

String.prototype.encodeHTML = function() {
    return jQuery('<div />').text(this).html();
};

window.getHTMLOfSelection = function(doc, win) {
    if (win == undefined)
        win = window;
    var range;

    if (doc.selection && doc.selection.createRange) {
        range = doc.selection.createRange();
        return range.htmlText;
    } else if(doc.getSelection) {
        range = doc.getSelection().getRangeAt(0);
        return range.cloneContents();
    } else if (win.getSelection) {
        var selection = win.getSelection();
        if (selection.rangeCount > 0) {
            range = selection.getRangeAt(0);
            var clonedSelection = range.cloneContents();
            var div = document.createElement('div');
            div.appendChild(clonedSelection);
            return div.innerHTML;
        } else {
            return '';
        }
    } else {
        return '';
    }
};
