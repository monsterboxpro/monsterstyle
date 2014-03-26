$ ->
  $('pre.highlight code').each (i, e)->
    hljs.highlightBlock e
  $('.codes .toggle .button').click ->
    action = $(this).attr('data-action')
    $('.codes .toggle .button').removeClass 'active'
    $(this).addClass 'active'
    $('.codes .code').hide()
    $(".codes .code[data-action='#{action}']").show()
