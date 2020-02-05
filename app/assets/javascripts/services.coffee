# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#package-toggle').on 'click', (event) ->
    event.preventDefault()
    $(this).toggleClass 'active'
    $('#packages').toggleClass 'block-active'
    return

  $('#requirement-toggle').on 'click', (event) ->
    event.preventDefault()
    $(this).toggleClass 'active'
    $('#requirements').toggleClass 'block-active'
    return

  $('#faq-toggle').on 'click', (event) ->
    event.preventDefault()
    $(this).toggleClass 'active'
    $('#faqs').toggleClass 'block-active'
    return
  $star_rating = $('.star-rating .fa')

  SetRatingStar = ->
    $star_rating.each ->
      if parseInt($star_rating.siblings('input.rating-value').val()) >= parseInt($(this).data('rating'))
        $(this).removeClass('fa-star-o').addClass 'fa-star'
      else
        $(this).removeClass('fa-star').addClass 'fa-star-o'

  $star_rating.on 'click', ->
    $star_rating.siblings('input.rating-value').val $(this).data('rating')
    SetRatingStar()
  SetRatingStar()
  return
