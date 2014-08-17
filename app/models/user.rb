class User < ActiveRecord::Base
  has_one :cart
  has_many :orders


  # validates :email,     presence: true
  validates :name,      presence: true
  validates :uid,       presence: true
  validates :provider,  presence: true

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
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
end
