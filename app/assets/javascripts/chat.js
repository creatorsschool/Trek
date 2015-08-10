$(document).ready(function(){

  $('.panel-heading').on('dblclick', toggleChat);
  $('.panel-heading span.icon_minim').on('click', toggleChat);

  function toggleChat(e) {
    var $this = $(this);

    if ($this.hasClass('panel-heading'))
      $this = $this.find('span.icon_minim');

    if (!$this.hasClass('panel-collapsed')) {
      $this.parents('.panel').find('.panel-body').hide();
      $this.parents('.panel').find('.panel-footer').hide();
      $this.addClass('panel-collapsed');
      $this.removeClass('glyphicon-minus').addClass('glyphicon-plus');
    } else {
      $this.parents('.panel').find('.panel-body').show();
      $this.parents('.panel').find('.panel-footer').show();
      $this.removeClass('panel-collapsed');
      $this.removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
  }

  $('.panel-footer input.chat_input').on('focus', function(e) {
    var $this = $(this);
    if ($('#minim_chat_window').hasClass('panel-collapsed')) {
      $this.parents('.panel').find('.panel-body').slideDown();
      $('#minim_chat_window').removeClass('panel-collapsed');
      $('#minim_chat_window').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
  });
  $('#new_chat').on('click', function(e) {
    var size = $(".chat-window:last-child").css("margin-left");
    size_total = parseInt(size) + 400;
    alert(size_total);
    var clone = $("#chat_window_1").clone().appendTo(".container");
    clone.css("margin-left", size_total);
  });
  $('.icon_close').on('click', function(e) {
  //$(this).parent().parent().parent().parent().remove();
    $("#chat_window_1").remove();
  });
});
