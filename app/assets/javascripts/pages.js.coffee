$ ->
  $('.answer').hide()
  $('.question').on 'click', (e) ->
    $(e.target).next('.answer').slideToggle()
