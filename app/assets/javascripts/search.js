$(document).ready(function(){
	$('.modal-trigger').leanModal();

	$(".button-collapse").sideNav();

	$('#searchButton').on('click', function(event) {
    event.preventDefault();
		$('#searchInput').slideToggle();
      $( "#searchButton" ).click(function() {
      $( "#icon_prefix" ).focus();
      });
	});

	$("#clearSearch").on('click', function(){
        $('#icon_prefix').val("");
	});
});
