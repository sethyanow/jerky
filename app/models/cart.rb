class Cart < ActiveRecord::Base
  has_many :users
  has_many :items

  def subtotal
    self.items.inject(0) { |sum, x| sum + x.price }
  end
end
