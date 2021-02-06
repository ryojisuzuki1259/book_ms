class CreateLendDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :lend_details do |t|
      t.integer :lend_id, null: false #貸出id
      t.integer :book_id, null: false #書籍id
      t.integer :lend_status, null: false #貸出状況

      t.timestamps
    end
  end
end
