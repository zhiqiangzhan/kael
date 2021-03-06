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
//= require jquery_ujs
// require turbolinks
//= require bootstrap
//= require url
//= require_tree .

jQuery(document).ready(function ($) {
    $(document)
        .on('ajax:success', '[data-remote]', function (event, data, status, xhr) {
            var url = new Url(window.location.href);
            url.query['tab'] = $(this).closest('.tab-pane').attr('id');
            window.location.href = url;
            delete url;
        })
        .on('ajax:complete', '[data-remote]', function (event, xhr, status) {
            $(this).closest('.modal').modal('hide');
        })
        .on('hidden.bs.modal', '#globalModal', function (e) {
            $(e.target).removeData('bs.modal');
        });

    var url = new Url();
    var tabId = url.query['tab'];
    delete url;
    if (tabId) {
        $('.nav-tabs a[href=#' + tabId + ']').tab('show');
    }

});
