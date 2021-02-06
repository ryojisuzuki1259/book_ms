class CreateLends < ActiveRecord::Migration[5.2]
  def change
    create_table :lends do |t|
      t.integer :end_user_id, null: false #ユーザーid
      t.integer :admin_id, null: false #管理者id
      t.date :due_date, null: false #返却期日
      t.integer :amount, null: false #合計数量

      t.timestamps
    end
  end
end
