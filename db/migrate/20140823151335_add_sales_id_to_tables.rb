class AddSalesIdToTables < ActiveRecord::Migration
  def change
    add_column :orders, :sale_id, :integer
    add_column :carts, :sale_id, :integer

  end
end
