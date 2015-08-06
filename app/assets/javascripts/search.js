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

  $('#searchInput input').on('keyup', function(event) {
    event.preventDefault();

    var input = $('#searchInput input').val();

    $.ajax("/search?search=" + input, {
      success: function(data) {
        $('#projects-list').html('');

        data.forEach(function(project) {
          $('#projects-list').append('<a class="collection-item">' + project.name + '</a>')
        });
      }
    });
  });

	$("#clearSearch").on('click', function(){
        $('#icon_prefix').val("");
	});
});
