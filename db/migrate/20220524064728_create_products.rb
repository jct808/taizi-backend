class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :suggested_price
      t.integer :special_offer
      t.integer :serial_no
      t.integer :supplier_id
      t.integer :category_id
      t.text :description
      t.integer :status
      t.integer :click

      t.timestamps
    end
  end
end
