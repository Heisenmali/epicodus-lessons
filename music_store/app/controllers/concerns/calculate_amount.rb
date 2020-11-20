require 'active_support/concern'

module CalculateAmount
  extend ActiveSupport::Concern
  
  def calculate_cart_amount(items)
    amount = 0
    items.each do |item|
      amount += item.product.price.to_f
    end
    amount
  end

end