$(function() {

	$('#searchButton').on('click', function() {
		$('#searchInput').slideToggle();
	});

	$("#clearSearch").on('click', function(){
        $('#icon_prefix').val("");
	});

	$(document).ready(function(){
    	$('.modal-trigger').leanModal();
    	$(".button-collapse").sideNav();
    	$(".teste").on("click", function(evt) {
    		evt.preventDefault();
    		$(".search-container").slideToggle();
    	});
	});


	
});