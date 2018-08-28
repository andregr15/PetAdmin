// This file is compiled into fae/application.js
// use this as another manifest file if you have a lot of javascript to add
// or just add your javascript directly to this file

// Uncomment the following line if you want to use Trumbowyg HTML Editor
// //= require fae/vendor/trumbowyg
//= require froala_editor.min.js

//= require plugins/align.min.js
//= require plugins/code_beautifier.min.js
//= require plugins/code_view.min.js
//= require plugins/entities.min.js
//= require plugins/font_family.min.js
//= require plugins/font_size.min.js
//= require plugins/help.min.js
//= require plugins/image.min.js
//= require plugins/image_manager.min.js
//= require plugins/inline_style.min.js
//= require plugins/line_breaker.min.js
//= require plugins/link.min.js
//= require plugins/lists.min.js
//= require plugins/paragraph_format.min.js
//= require plugins/paragraph_style.min.js
//= require plugins/quote.min.js
//= require plugins/table.min.js
//= require plugins/special_characters.min.js
//= require plugins/url.min.js
//= require third_party/image_aviary.min.js

$('selector').froalaEditor();

$(function() { $('#campaign_body').froalaEditor({
    inlineMode: false,
    heightMin: '200px',
    iconsTemplate: 'font_awesome_5'
})});

$(function() { $('#email_body').froalaEditor({
    inlineMode: false,
    heightMin: '200px',
    iconsTemplate: 'font_awesome_5'
})});