$(document).ready(function(){
    $('.modal-trigger').leanModal();
    $(".button-collapse").sideNav();
    $(".teste").on("click", function(evt) {
      evt.preventDefault();
      $(".search-container").slideToggle();
    });
});
