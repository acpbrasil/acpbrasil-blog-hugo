;(function () {
  'use strict';
  
  // Document on load
	$(function() {
		// Listen for ctrl + shift + a shortcut to display debug version
		bindDebugVersionKeyListener();
	});

	function bindDebugVersionKeyListener() {
		$('body').bind('keydown', function(e) {
			if (e.ctrlKey && e.shiftKey && e.which == 65) {
				if ($('#debugVersion')) $('#debugVersion').toggle();
			}
			/*if (typeof(keyPressed) == "undefined") keyPressed = [];
			keyPressed.push((e.keyCode ? e.keyCode : e.which));
			if (keyPressed.length === 3) {
				if (keyPressed.includes(17) && keyPressed.includes(16) && keyPressed[2] === 65) {
					if ($('#debugVersion')) $('#debugVersion').toggle();
				}
				keyPressed = [];
			}*/
		});
	}

}());
