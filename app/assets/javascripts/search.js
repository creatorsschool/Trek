$(document).ready(function(){
	$('#searchButton').on('click', function(event) {
		event.preventDefault
		$('#searchInput').show();
		$('#search-results').show();
      $( "#searchButton" ).click(function() {
      $( "#icon_prefix" ).focus();
      });
	});

	// $('html').on('click', function(e) {
	// 	if (!$.contains($('#searchInput'), e.target)) {
	// 		$('#searchInput').slideUp();
	// 	}
	// });

  $('#searchInput input').on('keyup', function(event) {
    event.preventDefault();

    var input = $('#searchInput input').val();

    $.ajax("/search?search=" + input, {
      success: function(data) {
        $('#projects-list').html('');

        data.forEach(function(project) {
					$('#projects-list').append(
						'<li class="list-project">' +
              '<div class="media-round user-project-image">' +
                '<img src="' + project.avatar + '" alt="">' +
              '</div>' +
              '<div class="project-name">' + project.name + '</div>' +
              '<div class="project-owner">by<b>' + project.username + '</b></div>' +
              '<div class="project-description">' + project.description + '</div>' +
            '</li>'
					);
        });
      }
    });
  });

	$("#clearSearch").on('click', function(){
        $('#icon_prefix').val("");
	});
});
