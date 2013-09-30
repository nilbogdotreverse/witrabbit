// This is a manifest file that will be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require turbolinks
//= require jquery.ui.all
//= require masonry/jquery.masonry

$( document ).ready(function() {
    $("#dialog").css("display","none");
    $("#tabs").tabs({
        beforeActivate: function(event, ui) {
            if(ui.newTab.index() == "6"){
                return false;
            }
          }
}
    );
    $("#tabs").tabs({
            activate: function(event, ui) {
                $container.masonry()
            }
        }
    );
    var $container = $('#container');
    $(function(){
        $($container).masonry({
            // options
            itemSelector : '.item'
        });
    });
    $container.find('.item').hover(
        function() {
            $(this).css({width: '155px', height: '55px' });
        },
        function() {
            $(this).css({ width: '160px', height: '60px' });
        }
    );
});




