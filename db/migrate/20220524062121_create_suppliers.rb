class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :phone_number
      t.string :fax_number
      t.string :sales
      t.integer :status
      t.string :comment

      t.timestamps
    end
  end
end
