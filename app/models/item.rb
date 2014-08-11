class Item < ActiveRecord::Base
  belongs_to :order
  belongs_to :cart

  has_one :flavor
  has_one :size
  has_one :type

  validates :quantity, presence: true
end
