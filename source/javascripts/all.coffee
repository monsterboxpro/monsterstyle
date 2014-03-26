$ ->
  $('pre.highlight code').each (i, e)->
    hljs.highlightBlock e
  $('.codes .toggle .button').click ->
    action = $(this).attr('data-action')
    $('.codes .toggle .button').removeClass 'active'
    $(this).addClass 'active'
    $('.codes .code').removeClass 'active'
    $(".codes .code[data-action='#{action}']").addClass 'active'
