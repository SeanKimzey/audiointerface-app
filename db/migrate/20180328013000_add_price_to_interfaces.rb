class AddPriceToInterfaces < ActiveRecord::Migration[5.1]
  def change
    add_column :interfaces, :price, :integer
  end
end
