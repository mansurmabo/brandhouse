$(document).ready ->
  $('.add-to-cart').click ->

    $button = $(this)

    $product = $button.parents('.productinfo')

    $in_cart = $product.find('.in_cart')

    $in_cart.show().delay(800).fadeOut()