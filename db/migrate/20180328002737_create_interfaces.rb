class CreateInterfaces < ActiveRecord::Migration[5.1]
  def change
    create_table :interfaces do |t|
      t.string :brand
      t.string :model
      t.integer :inputs
      t.integer :outputs

      t.timestamps
    end
  end
end
