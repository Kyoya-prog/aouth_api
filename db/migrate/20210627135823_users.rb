class Users < ActiveRecord::Migration[6.1]
  def change
    remove_column :users,:name
    remove_column :users,:lock_version
    remove_column :users,:register_user
    remove_column :users,:update_user
    remove_column :users,:role
    remove_column :users,:activated_at
  end
end
