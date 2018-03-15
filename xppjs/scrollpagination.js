/*
**	Anderson Ferminiano
**	contato@andersonferminiano.com -- feel free to contact me for bugs or new implementations.
**	jQuery ScrollPagination
**	28th/March/2011
**	http://andersonferminiano.com/jqueryscrollpagination/
**	You may use this script for free, but keep my credits.
**	Thank you.
*/



(function( $ ){

    $.fn.scrollPagination = function(options) {
        var opts = $.extend($.fn.scrollPagination.defaults, options || {});
        console.log(opts);
        var target = opts.scrollTarget;
        if (target == null) {
            target = obj;
        }
        opts.scrollTarget = target;
        return this.each(function() {
            console.log(1);
          $.fn.scrollPagination.init($(this), opts);
        });
    };

    $.fn.stopScrollPagination = function() {
        return this.each(function() {
            $(this).attr('scrollPagination', 'disabled');
        });

    };

    $.fn.scrollPagination.loadContent = function(obj, opts) {
        console.log(22);
        var target = opts.scrollTarget;
        console.log($(target).scrollTop());
        console.log(opts.heightOffset);
        console.log($("#gzjl_List").height());
        console.log($(target).height());
        var mayLoadContent = $(target).scrollTop() + opts.heightOffset >= $("#gzjl_List").height() - $(target).height();
        console.log(mayLoadContent);
        if (mayLoadContent) {
            if (opts.beforeLoad != null) {
                opts.beforeLoad();
                opts.contentData.currentPage = Number(opts.contentData.currentPage) + 1;
                opts.contentData.currentPage = String(opts.contentData.currentPage);

                // opts.contentData.currentPage = String("2");
            }
            $(obj).children().attr('rel', 'loaded');
          
          console.log(JSON.stringify(opts.contentData));
          var sendStr ="";
           sendStr = JSON.stringify(opts.contentData);
            $.ajax({
                
                url: '/QDcrm/aaQuePageRecord?qqiu=pageByDitchUid',
                method: 'POST',
                contentType:'application/json;charset=utf-8', 
                async: false,
                data: sendStr,

                success: function(data) {
                    //call your own function to load the content
    				console.log(data);
                    opts.loader(data);


    				 var objectsRendered = $(obj).children('[rel!=loaded]');

    				 if (opts.afterLoad != null) {
    				 opts.afterLoad(objectsRendered,data.qingqiu);
    				 }

                },
                dataType: opts.dataType
            });
        }

    };

    $.fn.scrollPagination.init = function(obj, opts) {
        var target = opts.scrollTarget;
        $(obj).attr('scrollPagination', 'enabled');

        $(target).scroll(function(event) {
            if ($(obj).attr('scrollPagination') == 'enabled') {
                $.fn.scrollPagination.loadContent(obj, opts);
            } else {
                event.stopPropagation();
            }
        });

        $.fn.scrollPagination.loadContent(obj, opts);

    };

    $.fn.scrollPagination.defaults = {
        'contentPage': null,
        'contentData': {},
    'beforeLoad': null,
        'afterLoad': null,
        'scrollTarget': null,
        'heightOffset': 0,
        //Add
        'dataType': null,
        'beforeSend':null,
        'loader': function(data) {}
};

})( jQuery );