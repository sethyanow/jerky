class Item < ActiveRecord::Base
  has_one :order
  has_one :cart
  has_one :flavor
  has_one :size

  belongs_to :order
  belongs_to :cart


  validates :quantity, presence: true
end
