class CreateEndUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :end_users do |t|
      t.string :last_name, null: false #姓
      t.string :first_name, null: false #名
      t.string :last_name_kana, null: false #姓カナ
      t.string :first_name_kana, null: false #名カナ
      t.string :address, null: false #住所
      t.string :telephone_number, null: false #電話番号
      t.date :birthday, null: false #誕生日

      t.timestamps
    end
  end
end
