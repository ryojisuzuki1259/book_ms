class ChangeColumnsAddNotnullOnAdmins < ActiveRecord::Migration[5.2]
  def change
    change_column_null :admins, :last_name, false
    change_column_null :admins, :first_name, false
    change_column_null :admins, :last_name_kana, false
    change_column_null :admins, :first_name_kana, false
    change_column_null :admins, :address, false
    change_column_null :admins, :telephone_number, false
    change_column_null :admins, :birthday, false
  end
end
