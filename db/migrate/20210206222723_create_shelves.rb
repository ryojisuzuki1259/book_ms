class CreateShelves < ActiveRecord::Migration[5.2]
  def change
    create_table :shelves do |t|
      t.string :name, null: false #本棚名
      t.boolean :is_active, null: false #本棚の有効無効

      t.timestamps
    end
  end
end
