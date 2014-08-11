class Item < ActiveRecord::Base
  belongs_to :order
  belongs_to :cart

  belongs_to :order
  belongs_to :cart


  has_one :flavor
  has_one :size

  validates :quantity, presence: true
end
