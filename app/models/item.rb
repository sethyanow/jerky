class Item < ActiveRecord::Base
  belongs_to :order
  belongs_to :cart

  belongs_to :flavor
  belongs_to :size
  belongs_to :type

  validates :quantity, presence: true
  validates :size, presence: true

  def price
    (self.size.base_price * quantity) * (0.7)
  end
end
