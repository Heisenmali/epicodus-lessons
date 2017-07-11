require 'active_support/concern'

module ManageCart
  extend ActiveSupport::Concern

  def clear_cart
    items = find_unresolved_items
    items.each do |item|
      item.update(status: "resolved")
    end
  end

  def resolve_cart_status
    current_user.update(cart_status: "empty")
  end

  def cart_fill

  end

  def find_unresolved_items
    all_items = current_account.order_items.all
    unresolved_items = []
    all_items.each do |item|
      if item.status == "unresolved"
        unresolved_items.push(item)
      end
    end
    unresolved_items
  end
end