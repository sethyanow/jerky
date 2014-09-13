class User < ActiveRecord::Base
  has_one :cart
  has_many :orders

  include PublicActivity::Model
  tracked owner: ->(controller, model) {controller && controller.current_user}

  # validates :email,     presence: true
  validates :name,      presence: true
  validates :uid,       presence: true
  validates :provider,  presence: true

  def new_cart
    self.cart.destroy if self.cart
    self.cart = Cart.create
  end

  def check_cart
    self.cart || new_cart
  end

  def admin?
    false
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid      = auth.uid
      user.name     = auth.info.name
      user.image    = auth.info.image
      user.email    = auth.info.email
      user.description = auth["description"]
      user.save
    end
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.nickname = auth.info.nickname
      user.name = auth.info.name
      user.image = auth.info.image
      user.email = auth.info.email
      user.description = auth["description"]
    end
  end

  def self.create_guest
    create! do |user|
      user.provider = "Guest"
      user.uid = "0"
      user.name = "Guest"
    end
  end
end
