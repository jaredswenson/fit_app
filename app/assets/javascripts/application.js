// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function () {
  $('.row').fadeIn(2500)
});


$(document).on('turbolinks:load', function () {
  $('.homebackground').animate({'top' : '150px'},1000);
  $('.appinfo').animate({'bottom' : '150px'},1000)
  $('#homelogin').animate({'top' : '135px'},1700);
  $('.homebackground').animate({'top' : '90px'},1000);
  $('.appinfo').animate({'bottom' : '90px'},1000);
  

  $('#createbtn').on('click', function (e) {
    e.preventDefault();
    $('#homelogin').fadeOut(500);
    $('.homebackground').animate({'top' : '-1000px'},1000); 
    var $self = $(this);
    $('.appinfo').animate({'bottom' : '-1000px'}, 1000, function () {
      document.location = $self.attr('href');
      });
  });
  $('.createbackground').animate({'left' : '15px'}, 1500);
  $('.new_athlete').show("explode", { pieces: 20 }, 2000); 

  $('#signin').on('click', function (e) {
    $('#homelogin').fadeOut(500);
    $('.homebackground').animate({'top' : '2000px'}, 1000);
    $('.appinfo').animate({'top' : '-1000px'}, 1000);
  });

$('.row').show();

$( ".specific_exercise" ).draggable({
      // helper: "clone", 
      start: function () {
          // $(this)
          // console.log($(this));
      }
  });
  $( ".day" ).droppable({
    drop: function( event, ui ) {
      $(this).append($(ui.draggable));
      console.log($(this).data("day"));
      $(this).append($('<input type="hidden" name="exercises[' + $(ui.draggable).attr("name") + ":" + $(this).data("day") + ']" value="' + $(ui.draggable).attr("value") + '">'));

    }
  });

  $('#templatebtn').on('click', function () {
    $('#templateform').fadeIn();
    $('html, body').animate({
      scrollTop: $('#templateform').offset().top
    }, 2000);
    })
  });




