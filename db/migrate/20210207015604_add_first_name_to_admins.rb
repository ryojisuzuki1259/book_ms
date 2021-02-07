class AddFirstNameToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :first_name, :string
    add_column :admins, :last_name_kana, :string
    add_column :admins, :first_name_kana, :string
    add_column :admins, :address, :string
    add_column :admins, :telephone_number, :string
    add_column :admins, :birthday, :date
  end
end
