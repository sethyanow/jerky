class Order < ActiveRecord::Base

  include PublicActivity::Model
  tracked owner: ->(controller, model) {controller && controller.current_user}


  has_many :items
  belongs_to :user
end
