//= require jquery
//= require jquery_cookie
//= require admin/ace-extra.min

$(function(){
    $('.admin-select-skin').on('click', function () {
        var skin_cookie = $(this).attr('data-name');
        console.log(skin_cookie);
        setCookie('skin_cookie', skin_cookie, '/');
        window.location.reload();
    });
    function setCookie(key, value, path) {
        $.cookie(key, value, {path: path});
    }
});

