class AddShopIdToDesserts < ActiveRecord::Migration[5.2]
  def change
    add_column :desserts, :shop_id, :integer
  end
end
