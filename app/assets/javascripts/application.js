// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require_tree .


//navbar--------------------------------------------


$(document).ready(function() {
    var menuToggle = $('#js-mobile-menu').unbind();
    $('#js-navigation-menu').removeClass("show");

    menuToggle.on('click', function(e) {
        e.preventDefault();
        $('#js-navigation-menu').slideToggle(function(){
            if($('#js-navigation-menu').is(':hidden')) {
                $('#js-navigation-menu').removeAttr('style');
            }
        });
    });
});



//login modal--------------------------------------------
$(function() {
    $("#modal-1").on("change", function() {
        if ($(this).is(":checked")) {
            $("body").addClass("modal-open");
        } else {
            $("body").removeClass("modal-open");
        }
    });

    $(".modal-fade-screen, .modal-close").on("click", function() {
        $(".modal-state:checked").prop("checked", false).change();
    });

    $(".modal-inner").on("click", function(e) {
        e.stopPropagation();
    });
});

//paralax window---------------------------------------------------

$(document).ready(function() {
    if ($("#js-parallax-window").length) {
        parallax();
    }
});

$(window).scroll(function(e) {
    if ($("#js-parallax-window").length) {
        parallax();
    }
});

function parallax(){
    if( $("#js-parallax-window").length > 0 ) {
        var plxBackground = $("#js-parallax-background");
        var plxWindow = $("#js-parallax-window");

        var plxWindowTopToPageTop = $(plxWindow).offset().top;
        var windowTopToPageTop = $(window).scrollTop();
        var plxWindowTopToWindowTop = plxWindowTopToPageTop - windowTopToPageTop;

        var plxBackgroundTopToPageTop = $(plxBackground).offset().top;
        var windowInnerHeight = window.innerHeight;
        var plxBackgroundTopToWindowTop = plxBackgroundTopToPageTop - windowTopToPageTop;
        var plxBackgroundTopToWindowBottom = windowInnerHeight - plxBackgroundTopToWindowTop;
        var plxSpeed = 0.35;

        plxBackground.css('top', - (plxWindowTopToWindowTop * plxSpeed) + 'px');
    }
}

//DATEPICKER
$(function() {
  $('#datepicker').datepicker({
    dateFormat: 'dd-mm-YYYY'
  });
});


//SORTABLE
$(function() {
  $( ".sortable" ).sortable({
    axis: "y"
  });
});
