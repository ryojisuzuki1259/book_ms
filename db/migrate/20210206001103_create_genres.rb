class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :name, null: false #ジャンル名
      t.boolean :is_active, null: false #ジャンルの有効無効

      t.timestamps
    end
  end
end
