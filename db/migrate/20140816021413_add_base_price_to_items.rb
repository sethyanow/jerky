class AddBasePriceToItems < ActiveRecord::Migration
  def change
    add_column :sizes, :base_price, :float
  end
end
