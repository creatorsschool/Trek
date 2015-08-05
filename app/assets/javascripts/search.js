$(document).ready(function(){
	$('.modal-trigger').leanModal();

	$(".button-collapse").sideNav();

	$('#searchButton').on('click', function(event) {
    event.preventDefault();
		$('#searchInput').slideToggle();
	});

	$("#clearSearch").on('click', function(){
        $('#icon_prefix').val("");
	});
});
