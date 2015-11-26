#= require browser_timezone_rails/application.js
#= require jquery
#= require jquery_ujs
#= require bootstrap-sprockets
#= require turbolinks
#= require_tree .

$(document).on 'ready page:load', ->
  Global =
    show_item: (target)->
      $(target).hide()
      $(target).parent('div').find('.to-show').show()
    hide_item: (target)->
      $(target).parent('.to-show').hide()
      $(target).parent('.to-show').parent('div').find('.btn-show').show()

  $('.btn-show').on 'click', ->
    Global.show_item this
  $('.btn-hide').on 'click', ->
    Global.hide_item this

