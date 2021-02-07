class ChangeIsActiveOfShelves < ActiveRecord::Migration[5.2]
  def up
    change_column :shelves, :is_active, :boolean, null: false, default: 'true'
  end

  def down
    change_column :shelves, :is_active, :boolean, null: false
  end
end
