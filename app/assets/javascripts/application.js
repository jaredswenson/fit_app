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
var extraslowspeed = 2500
var slowspeed = 2000
var mediumspeed = 1500
var fastspeed = 1000
var extrafastspeed = 500

$(document).ready(function () {
  $('.row').fadeIn(extraslowspeed); //fade .row in just on page load.
  $('.headbtn').fadeIn(mediumspeed);
   // function to change background image randomly
});

// animations for the home screen.
$(document).on('turbolinks:load', function () {
  $('.homebackground').animate({'top' : '150px'},fastspeed);
  $('.appinfo').animate({'bottom' : '150px'},fastspeed)
  $('#homelogin').animate({'top' : '135px'},mediumspeed);
  $('.homebackground').animate({'top' : '90px'},fastspeed);
  $('.appinfo').animate({'bottom' : '-200px'},fastspeed);
  
  // hide home screen divs when create account button is clicked
  $('#createbtn').on('click', function (e) {
    e.preventDefault(); //prevent form from submitting to run animations
    $('#homelogin').fadeOut(extrafastspeed);
    $('.homebackground').animate({'top' : '-1000px'},fastspeed); 
    var $self = $(this);
    $('.appinfo').animate({'bottom' : '-2000'}, fastspeed, function () {
      document.location = $self.attr('href'); //change doc location to button location
      });
  });
  $('.createbackground').animate({'left' : '15px'}, mediumspeed); //bring in new background
  $('.new_athlete').show("explode", { pieces: 20 }, slowspeed); //bring in new form

  $('#subscription_type').on('change', function () {
    if ($(this).val() == "Premium") {
      $('#subscription_cost').text('$15 A Month');
    } else {
      $('#subscription_cost').text('$8 A Month');
    }
  })

  // hide home screen divs when sign in completed
  $('#signin').on('click', function () {
    $('#homelogin').fadeOut(extrafastspeed); 
    $('.homebackground').animate({'top' : '2000px'}, fastspeed);
    $('.appinfo').animate({'top' : '-2000'}, fastspeed);
  });

  // hide home screen divs when trainer sign in button is clicked
  $('#trainerbtn').on('click', function (e) {
    e.preventDefault();
    $('#homelogin').fadeOut(extrafastspeed);
    $('.homebackground').animate({'top' : '-1000px'},fastspeed); 
    var $self = $(this);
    $('.appinfo').animate({'bottom' : '-2000'}, fastspeed, function () {
      document.location = $self.attr('href');
      });
  });
   $('.updatebackground').fadeIn(mediumspeed); // bring in new background
   $('.loginform').fadeIn(slowspeed); // bring in trainer login form

   // hide create account screen divs when trainer sign in button is clicked
  $('#trainerbtn').on('click', function (e) {
    e.preventDefault();
    $('#new_athlete').fadeOut(extrafastspeed);
    var $self = $(this);
    $('.createbackground').animate({'top' : '-1000px'},fastspeed, function () {
      document.location = $self.attr('href');
    }); 
    
  });
   $('.updatebackground').fadeIn(mediumspeed); // bring in new background
   $('.loginform').fadeIn(slowspeed); // bring in trainer login form

  // fade divs out when trainer signs in
  $('#trainerlogin').on('click', function () {
    $('.loginform').fadeOut(extrafastspeed);
    $('.updatebackground').fadeOut(extrafastspeed);
  });

  //go from signup page to more info page
  $('#signup').on('click', function (e) {
    $('#new_athlete').fadeOut();
  });

  //bring in more info
  $('#edit_athlete').show("explode", { pieces: 20 }, slowspeed);

  //fade out update form
  $('#updatebtn').on('click', function () {
    $('#edit_athlete').hide("explode", { pieces: 20}, extrarfastspeed)
  })

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
      scrollTop: $('#templateform').offset().top -100
    }, slowspeed);
    });

  // show exercises on trainer page and scroll down to that div
  $('#exercisebtn').on('click', function () {
    $('#templateform').hide();//hide templateform if it is open when opening exerciseform
    $('#exerciseform').fadeIn();
    $('html, body').animate({
      scrollTop: $('#exerciseform').offset().top -100
    }, slowspeed);
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
  // sets cookie amount based on whats put in the input boxes
  $('#counterbtn').on('click', function () {
    if (cookies_present()) {
      Cookies.set('calories', parseInt(Cookies.get('calories')) + ($('#caloriecounter').val() === '' ? 0 : parseInt($('#caloriecounter').val())), { expires: 1 });
      Cookies.set('carbs', parseInt(Cookies.get('carbs')) + ($('#carbcounter').val() === '' ? 0 : parseInt($('#carbcounter').val())), { expires: 1 });
      Cookies.set('proteins', parseInt(Cookies.get('proteins')) + ($('#proteincounter').val() === '' ? 0 : parseInt($('#proteincounter').val())), { expires: 1 });
      Cookies.set('fats', parseInt(Cookies.get('fats')) + ($('#fatcounter').val() === '' ? 0 : parseInt($('#fatcounter').val())), { expires: 1 });
    }
    $('#caloriecounter').val(''); //clears input boxes
    $('#carbcounter').val('');
    $('#proteincounter').val('');
    $('#fatcounter').val('');
    update_nutrition();
  });
  function update_nutrition() {
    if (cookies_present()) { //updates the h3 for the athlete to see what their logged nutrition is.
      $('#caloriestoday').text('Calories: ' + Cookies.get('calories'));
      $('#carbstoday').text('Carbs: ' + Cookies.get('carbs'));
      $('#proteinstoday').text('Proteins: ' + Cookies.get('proteins'));
      $('#fatstoday').text('Fats: ' + Cookies.get('fats'));
    }
  };
  //checks to see if there are already cookies, if not makes them.
  function cookies_present() {
    if (Cookies.get('calories') === undefined) {
      Cookies.set('calories', 0);
    }
    if (Cookies.get('carbs') === undefined) {
      Cookies.set('carbs', 0);
    }
    if (Cookies.get('proteins') === undefined) {
      Cookies.set('proteins', 0);
    }
    if (Cookies.get('fats') === undefined) {
      Cookies.set('fats', 0);
    }
    return true;
  };
  update_nutrition();
});


