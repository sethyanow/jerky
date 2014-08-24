class AddGuestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :guest, :boolean
    add_column :users, :type, :string
  end
end
