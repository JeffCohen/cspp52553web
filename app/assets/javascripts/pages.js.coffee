$ ->
  $('.answer').hide()
  $('.question').on 'click', (e) ->
    e.preventDefault()
    $(e.target).next('.answer').slideToggle()
