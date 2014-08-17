class User < ActiveRecord::Base
  belongs_to :cart

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
      user.description = auth["description"]
    end
  end
  
  
  
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
