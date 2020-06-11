/**
 * Created by hxk on 2017/5/18.
 */

// change jquery_ujs 的 confirm 对话框
$.rails.allowAction = function (element) {
    var message = element.attr('data-confirm');
    if (!message) {
        return true;
    }
    var opts = {
        // title: '提示信息',
        message: message,
        size: 'small',
        callback: function (ok) {
            if (ok) {
                element.removeAttr('data-confirm');
                element.trigger('click.rails');
            }
        }
    };
    bootbox.confirm(opts);
    return false;
};

$(function () {
    // date-time-picker
    if (!ace.vars['old_ie']) $('.date-timepicker').datetimepicker({
        //format: 'MM/DD/YYYY h:mm:ss A',//use this option to display seconds
        format: 'YYYY-MM-DD h:mm A',
        icons: {
            time: 'fa fa-clock-o',
            date: 'fa fa-calendar',
            up: 'fa fa-chevron-up',
            down: 'fa fa-chevron-down',
            previous: 'fa fa-chevron-left',
            next: 'fa fa-chevron-right',
            today: 'fa fa-arrows ',
            clear: 'fa fa-trash',
            close: 'fa fa-times'
        }
    }).next().on(ace.click_event, function () {
        $(this).prev().focus();
    });


    // multiple chosen
    var chosen_select = $(".chosen-select");
    chosen_select.chosen({
        max_selected_options: 8,
        no_results_text: "没有找到！",
        search_contains: true,   //关键字模糊搜索，设置为false，则只从开头开始匹配
        allow_single_deselect: true //是否允许取消选择
    });

    // search div show/hide
    $('.btn-search-toggle').on('click', function () {
        var form_search_toggle = $('.form-search-toggle');
        form_search_toggle.toggleClass('hide show');
    });
});

function gritter_notice(status, respond_message) {
    $.gritter.add({
        title: '操作状态:',
        text: respond_message,
        time: '3000',
        class_name: status ? '' : 'gritter-error'
    });
}
function show_tooltip_window(hash) {
    // hash keys includes requires:class_name,tooltip_width,page_y,page_x
    var tooltip_td = $("." + hash["class_name"]);
    tooltip_td.mouseover(function (data) {
        var _self = $(this);
        _self.css('background', '#ffb752');
        var tooltip_width = hash["tooltip_width"];
        var tooltip = '<div class="tooltip-window" style="border-radius: 10px;width:' + tooltip_width + ';height:auto;background:#9fe1e7;position:absolute;z-index:10001;padding:0 10px;line-height: 200%;">'
            + _self.attr('data-title') + '</br>' +
            '</div>';
        $("body").append(tooltip);
        var tooltip_window = $('.tooltip-window');
        _self.mouseover(function (e) {
            _self.css('z-index', 10000);
            tooltip_window.fadeIn('500');
            tooltip_window.fadeTo('10', 1.9);
        }).mousemove(function (e) {
            tooltip_window.css('top', e.pageY - hash["page_y"]);
            tooltip_window.css('left', e.pageX - hash["page_x"]);
        });
    });
    tooltip_td.mouseout(function () {
        $(this).css('z-index', 8);
        $('.tooltip-window').remove();
        $(this).removeAttr('style');
    });
}