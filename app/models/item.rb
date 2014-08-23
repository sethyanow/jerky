class Item < ActiveRecord::Base

  include PublicActivity::Model
  tracked owner: ->(controller, model) {controller && controller.current_user}

  belongs_to :order
  belongs_to :cart

  belongs_to :flavor
  belongs_to :size
  belongs_to :type

  validates :quantity, presence: true
  validates :size, presence: true
  validates :flavor, presence: true
  validates :type, presence: true


  def price
    (self.size.base_price * quantity) * (0.7)
  end
end
