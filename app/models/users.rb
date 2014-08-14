class Users < ActiveRecord::Base
  has_secure_password


  def username
    this.email
  end
end
