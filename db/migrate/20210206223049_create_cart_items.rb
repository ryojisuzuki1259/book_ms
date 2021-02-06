class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :end_user_id, null: false #管理者id
      t.integer :book_id, null: false #書籍id
      

      t.timestamps
    end
  end
end
