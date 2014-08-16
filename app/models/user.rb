class User < ActiveRecord::Base
  #has_secure_password

  def self.find_or_create_from_auth_hash (auth)

    #find_by_auth_hash(hash)
    self.create_with_omniauth(auth)
  end

  def self.find_by_auth_hash (auth)

  end

  def self.create_with_omniauth (auth)
    create! do |user|
      user.provider = auth["provider"]
      user.email = auth["email"]
      user.uid = auth["uid"]
    end
  end
end
