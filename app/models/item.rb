class Item < ActiveRecord::Base
  has_one :order
  has_one :cart
  has_one :flavor
  has_one :size

  validates :quantity, presence: true
end
