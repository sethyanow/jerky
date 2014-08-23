class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :title
      t.text :description
      t.date :deadline
      t.boolean :published

      t.timestamps
    end
  end
end
