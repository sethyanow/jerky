class Cart < Order
  belongs_to :user
  has_many :items

  def subtotal
    self.items.inject(0) { |sum, x| sum + x.price }
  end
end
