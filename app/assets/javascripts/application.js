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
  $('.row').fadeIn(2500); //fade .row in just on page load.
  $('.headbtn').fadeIn(1500);
});

// animations for the home screen.
$(document).on('turbolinks:load', function () {
  $('.homebackground').animate({'top' : '150px'},1000);
  $('.appinfo').animate({'bottom' : '150px'},1000)
  $('#homelogin').animate({'top' : '135px'},1700);
  $('.homebackground').animate({'top' : '90px'},1000);
  $('.appinfo').animate({'bottom' : '90px'},1000);
  
  // hide home screen divs when create account button is clicked
  $('#createbtn').on('click', function (e) {
    e.preventDefault(); //prevent form from submitting to run animations
    $('#homelogin').fadeOut(500);
    $('.homebackground').animate({'top' : '-1000px'},1000); 
    var $self = $(this);
    $('.appinfo').animate({'bottom' : '-1000px'}, 1000, function () {
      document.location = $self.attr('href'); //change doc location to button location
      });
  });
  $('.createbackground').animate({'left' : '15px'}, 1500); //bring in new background
  $('.new_athlete').show("explode", { pieces: 20 }, 2000); //bring in new form

  // hide home screen divs when sign in completed
  $('#signin').on('click', function () {
    $('#homelogin').fadeOut(500); 
    $('.homebackground').animate({'top' : '2000px'}, 1000);
    $('.appinfo').animate({'top' : '-1000px'}, 1000);
  });

  // hide home screen divs when trainer sign in button is clicked
  $('#trainerbtn').on('click', function (e) {
    e.preventDefault();
    $('#homelogin').fadeOut(500);
    $('.homebackground').animate({'top' : '-1000px'},1000); 
    var $self = $(this);
    $('.appinfo').animate({'bottom' : '-1000px'}, 1000, function () {
      document.location = $self.attr('href');
      });
  });
   $('.updatebackground').fadeIn(1500); // bring in new background
   $('.loginform').fadeIn(2000); // bring in trainer login form

  // fade divs out when trainer signs in
  $('#trainerlogin').on('click', function () {
    $('.updatebackground').fadeOut(500);
    $('.loginform').fadeOut(500);
  });

  // show .row anytime you visit a page with that div
  $('.row').show();

  // start of draggable and droppable functions
  $( ".specific_exercise" ).draggable({
        helper: "clone", 
        start: function () {
          
      }
  });
  $( ".day" ).droppable({
    drop: function( event, ui ) {
      $(this).append($(ui.draggable));
      $(this).append($('<input type="hidden" name="exercises[' + $(ui.draggable).attr("name") + ":" + $(this).data("day") + ']" value="' + $(ui.draggable).attr("value") + '">'));

    }
  });//end of draggable and droppable function

  // show template form on trainer page, and scroll down to that div
  $('#templatebtn').on('click', function () {
    $('#exerciseform').hide(); //hide exerciseform if it is open and opening templateform
    $('#templateform').fadeIn();
    $('html, body').animate({
      scrollTop: $('#templateform').offset().top -80
    }, 2000);
    });

  // show exercises on trainer page and scroll down to that div
  $('#exercisebtn').on('click', function () {
    $('#templateform').hide(); //hide templateform if it is open when opening exerciseform
    $('#exerciseform').fadeIn();
    $('html, body').animate({
      scrollTop: $('#exerciseform').offset().top -80
    }, 2000);
    });

  //exit button for templateform and exerciseform
  $('.exit').on('click', function () {
    $('.hiddendivs').hide();
  });

  //escape key to close templateform and exerciseform
  $(document).keyup(function(e) {
     if (e.keyCode == 27) { 
      $('.hiddendivs').hide();
    }
  });

});



// function to change background image randomly
function randomImage(){
var randomNumber = Math.floor((Math.random() * 4) + 1);

    if (randomNumber == 1 ) {
        $('.homebackground')[0].style.backgroundImage = "url('assets/bench.jpg')";
  }else if(randomNumber == 2){
        $('.homebackground')[0].style.backgroundImage = "url('assets/girlrow.jpg')";
  }else if(randomNumber == 3){
        $('.homebackground')[0].style.backgroundImage = "url('assets/guybackground.jpg')";
  }else if(randomNumber == 4){
        $('.homebackground')[0].style.backgroundImage = "url('assets/girlflys.jpg')";
  }     


}// end of randomImage function

setInterval(randomImage, 5000); //interval for randomImage function




