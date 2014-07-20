class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :flavor_id
      t.integer :order_id
      t.integer :cart_id
      t.integer :size_id

      t.integer :quantity

      t.timestamps
    end
  end
end
