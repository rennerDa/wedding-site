ready = ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()

  alert("TEST");

  $(".active").parents("li").each ->
    $(this).addClass "active"

  $(".alert-dismissable").fadeOut(5000)

  $('.panel-heading span.clickable').click ->
    $this = $(this);
    if !$this.hasClass('panel-collapsed')
      $this.parents('.panel').find('.panel-body').slideUp();
      $this.addClass('panel-collapsed');
      $this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
    else
      $this.parents('.panel').find('.panel-body').slideDown();
      $this.removeClass('panel-collapsed');
      $this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');

  $(".colorbox-group").colorbox({rel:'colorbox-group', transition:"none", iframe: true});

$(document).ready(ready)