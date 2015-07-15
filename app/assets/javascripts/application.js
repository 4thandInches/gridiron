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
//= require moment
//= require fullcalendar
//= require jquery.datetimepicker





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



//login modal---------------------------------------------------------------------------------------
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
  $('.datepicker').datetimepicker({
     format:'g:i A',
     formatTime: 'g:i A',

     step:30,
     ampm: true
  });
});

//hide window ambush thing aka fade in---------------------------------------------------------------------------
$(document).ready(function() {
    var element = document.getElementById("js-fadeInElement");
    $(element).addClass('js-fade-element-hide');

    $(window).scroll(function() {
        if( $("#js-fadeInElement").length > 0 ) {
            var elementTopToPageTop = $(element).offset().top;
            var windowTopToPageTop = $(window).scrollTop();
            var windowInnerHeight = window.innerHeight;
            var elementTopToWindowTop = elementTopToPageTop - windowTopToPageTop;
            var elementTopToWindowBottom = windowInnerHeight - elementTopToWindowTop;
            var distanceFromBottomToAppear = 300;

            if(elementTopToWindowBottom > distanceFromBottomToAppear) {
                $(element).addClass('js-fade-element-show');
            }
            else if(elementTopToWindowBottom < 0) {
                $(element).removeClass('js-fade-element-show');
                $(element).addClass('js-fade-element-hide');
            }
        }
    });
});

//SORTABLE

function changePosition(){
  $('.sortable').sortable().bind('sortupdate', function(e, ui) {
    updated_positions = []
    setPosition();

    $('.ui-sortable-handle, .ui-state-default').each(function(i){
        updated_positions.push({ id: $(this).data("id"), position: i + 1 });
    });


    $.ajax({
        type: "PUT",
        url: '/positions/sort',
        data: { order: updated_positions }
    });


  });
}

function setPosition(){
  $('.ui-sortable-handle, .ui-state-default').each(function(i){
    $(this).attr('page_position', i + 1);
  });
}

$(changePosition);
$(setPosition);

//form text effect-------------------------------------------------------------------------------------------

$(function () {

    $('input').focusin(function() {
        $(this).siblings('span').addClass('focus-in');
    });

    $('input').focusout(function() {
        var characters = $(this).val();
        if (characters === '') {
            $(this).siblings('span').removeClass('focus-in');
        }
    });

});
//calendar////////////////////////////////////////////////////////////
		$(document).ready(function()
		{
			var calendar = $('#calendar').fullCalendar(
			{
				header:
				{
					left: 'prev,next today',
					center: 'title',
					// right: 'month,agendaWeek,agendaDay'
          right: ''
				},

				defaultView: 'month',

				selectable: true,
				selectHelper: true,
				/*
					when user select timeslot this option code will execute.
					It has three arguments. Start,end and allDay.
					Start means starting time of event.
					End means ending time of event.
					allDay means if events is for entire day or not.
				*/

				select: function(start, end, allDay)
				{
					/*
						after selection user will be promted for enter title for event.
					*/
					var title = prompt('Event Title:');
					/*
						if title is entered calendar will add title and event into fullCalendar.
					*/
					if (title)
					{

						calendar.fullCalendar('renderEvent',
							{
								title: title,
								start: start,
								end: end,
								allDay: true
							},
							true
						);

            $.ajax({
              type: 'POST',
              url: '/events',
              // dataType: 'json',
              data: {
                title: title,
                start: start.toDate(),
  							end: end.toDate(),
                allDay: true
              }
            });
					}
					calendar.fullCalendar('unselect');
				},

					//editable: true allow user to edit events.



        //adds games from schedule and any events that were created on the calendar
        eventSources: [

        // your event source
        {
            url: '/games.json',
            color: '#FE7A04',
            textColor: 'white'

        },

        {
            url: '/events.json',
        }
        // any other sources...

        ],

        // editable: true


			});

		});


//add fields to schedule maker///////////////////////////////////////////////////
$(function () {
  var questionCounter = $('.situation-fields').length;
  var newHtml = $('.situation-fields').last().html();
  $('#addTask').on('click', function (e) {
    e.stopPropagation();
    e.preventDefault();



    newHtml = newHtml
      .replace(/\[[0-9]+\]/g, '[' + questionCounter + ']')
      .replace(/_[0-9]+_/g, '_' + questionCounter + '_');

    var newFields = $('.situation-fields').last().clone();
    newFields.html(newHtml);
    $('.wrapper').append(newFields);

    questionCounter++;
  })

})

$(document).ready(function(){
  ('button').mouseenter
});
