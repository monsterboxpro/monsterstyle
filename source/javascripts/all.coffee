$ ->
  $('.codes .toggle .button:first').addClass 'active'
  $('.codes .code:first').addClass 'active'

  $('pre.highlight code').each (i, e)->
    hljs.highlightBlock e

  $('.codes .toggle .button').click ->
    action = $(this).attr('data-action')
    $('.codes .toggle .button').removeClass 'active'
    $(this).addClass 'active'
    $('.codes .code').removeClass 'active'
    $(".codes .code[data-action='#{action}']").addClass 'active'

  $('.column .toggle .button').click ->
    action = $(this).attr('data-action')
    $('.column .toggle .button').removeClass 'active'
    $(this).addClass 'active'
    $('.column .section').removeClass 'active'
    $(".column .section[data-action='#{action}']").addClass 'active'
