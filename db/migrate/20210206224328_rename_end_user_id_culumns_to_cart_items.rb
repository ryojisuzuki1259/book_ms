class RenameEndUserIdCulumnsToCartItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :cart_items, :end_user_id, :admin_id
  end
end
