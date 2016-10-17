CKEDITOR.editorConfig = function (config) {
    config.toolbarGroups = [
        { name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
        { name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
        { name: 'links' },
        { name: 'insert' },
        { name: 'forms' },
        { name: 'tools' },
        { name: 'document',    groups: [ 'mode', 'document', 'doctools' ] },
        { name: 'others' },
        '/',
        { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
        { name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ] },
        { name: 'styles' },
        { name: 'colors' },
        { name: 'about' }
    ];

config.language = 'en';
config.uiColor = '#AADC6E';
    var strLanguageName = "en";
    jQuery.ajaxSetup({ async: false, cache: false });
    jQuery.ajax({
        type: "POST",
        url: "/remotemethods/getCurrentLang",
        data: "xml",
        success: setLanguage,
        error: onError
    },2000);
    function setLanguage(data) {
        strLanguageName = jQuery(data).find("lang").text();
    }
    function onError(xhr, ajaxOptions, thrownError) { }
    config.language = strLanguageName;
};
