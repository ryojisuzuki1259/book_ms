class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :genre_id, null: false #ジャンルid
      t.integer :shelf_id, null: false #本棚id
      t.string :title, null: false #書籍タイトル
      t.date :date_publication, null: false #発行年月日
      t.boolean :is_active, null: false #保管状況

      t.timestamps
    end
  end
end
