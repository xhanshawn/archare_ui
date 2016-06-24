$(document).ready(function(){

  // menu toggle for sb
  $('.ah-menu-toggle').on('click', function(e){
    $('.ah-wrapper').toggleClass('sb-collapsed');
  });




  // scroll animation for navigating with id
  $(document).on('click', 'a[href^="#"]', function(e) {
    // target element id
    var id = $(this).attr('href');

    // target element
    var $id = $(id);

    // prevent standard hash navigation (avoid blinking in IE)
    e.preventDefault();

    // var animate_options = {duration: 800, easing: 'easeOutSine'};

    var pos = 0;

    if ($id.length !== 0) {

      // top position relative to the document
      pos = $(id).offset().top - 60;
    }

    var diff = Math.abs(pos - $(document).scrollTop());

    console.log(diff);
    // animated top scrolling
    $('body, html').animate({scrollTop: pos}, { duration: diff, easing: 'easeInOutCubic'});

  });


});






// tooltip for ah nav cube
function add_nav_cube_tooltip(){

  console.log("Archare-nav-cube tooltip added");

  $('.ah-nav-cube').attr({
    'data-toggle': 'tooltip',
    'data-delay' : '{"show":"1200", "hide":"0"}'
  });


  $('[data-toggle="tooltip"]').tooltip({'placement': 'top'});
}
