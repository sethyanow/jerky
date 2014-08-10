class Item < ActiveRecord::Base
  belongs_to :order
  belongs_to :cart
  belongs_to :flavor
  belongs_to :size

  belongs_to :order
  belongs_to :cart


  validates :quantity, presence: true
end