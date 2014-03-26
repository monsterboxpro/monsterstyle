$ ->
  console.log 'yeee'
  $('pre.highlight code').each (i, e)->
    hljs.highlightBlock e
