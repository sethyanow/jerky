class Cart < Order
  belongs_to :user
  has_many :items
end
