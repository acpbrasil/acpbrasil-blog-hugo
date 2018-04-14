;(function () {
	
	'use strict';

  /**
   * ACP: Override clickMenu from main.js to add the ability to have more links
   * jumping into different sections.
   */
  // Page Nav
  var clickMenu = function() {

    $('.inner-section-link').click(function(event) { // Custom change
      var section = $(this).data('nav-section'),
        navbar = $('#navbar');

        if ( $('[data-section="' + section + '"]').length ) {
          $('html, body').animate({
            scrollTop: $('[data-section="' + section + '"]').offset().top
          }, 500);
        }
        if ( navbar.is(':visible')) {
          navbar.removeClass('in');
          navbar.attr('aria-expanded', 'false');
          $('.js-fh5co-nav-toggle').removeClass('active');
        }
        event.preventDefault();
        return false;
    });

  };

  // Document on load.
	$(function() {

    clickMenu();
    
	});

}());
  