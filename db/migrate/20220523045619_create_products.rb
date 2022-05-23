class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.text :name
      t.integer :serial_no

      t.timestamps
    end
  end
end
