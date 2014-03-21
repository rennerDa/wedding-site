jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()

  $(".active").parents("li").each ->
    $(this).addClass "active"

  $(".alert-dismissable").fadeOut(5000)