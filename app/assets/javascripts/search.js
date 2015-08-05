$(document).ready(function(){
	$('#searchButton').on('click', function(event) {
		event.preventDefault
		$('#searchInput').slideToggle();
      $( "#searchButton" ).click(function() {
      $( "#icon_prefix" ).focus();
      });
	});

	$('html').on('click', function(e) {
		if ($.contains(!$('#searchInput'), e.target)) {
			$('#searchInput').slideUp();
		}
	});

	$("#clearSearch").on('click', function(){
        $('#icon_prefix').val("");
	});
});
