class CreateShowCases < ActiveRecord::Migration[7.0]
  def change
    create_table :show_cases do |t|
      t.string :name

      t.timestamps
    end
  end
end
