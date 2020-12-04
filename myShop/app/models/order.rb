class Order < ApplicationRecord
  has_many :lineitems, dependent: :destroy

  PAYMENT_TYPE = ["check", "credit card", "venmo", "paypal"]
  validates :name, :address, :email, presence: true
  validates :paytype, inclusion: PAYMENT_TYPE

  def add_items_from_cart(cart)
    cart.lineitems.each do |item|
      item.cart_id = nil
      item.order_id = self.id
      p 2
      p 2
      p 2
      p self.id
      item.save
    end
  end

  def total_price
    self.lineitems.to_a.sum {|item| item.item_total_price}
  end

end
