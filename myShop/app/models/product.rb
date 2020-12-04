class Product < ApplicationRecord
  has_many :lineitems
  before_destroy :make_sure_no_line_item_in_the_current_cart

  validates :name, :description, :image, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :name, uniqueness: true
  validates :image, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i, message: "file must be GIF/JPG/PNG"}

  def make_sure_no_line_item_in_the_current_cart
    if self.lineitems.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end


end
