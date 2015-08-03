function show(id){
    document.getElementById(id).style.display = 'block';
    document.getElementById("searchButton").style.display = 'none';
}
                    
function hide(id){
    document.getElementById(id).style.display = 'none';
    document.getElementById("searchButton").style.display = 'block';
}

function eraseText() {
   document.getElementById("icon_prefix").value = "";
}


$(function() {

	$('#searchButton').on('click', function() {
		show('comment');
	});

	$("#clearSearch").on('click', function(){
		eraseText();
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