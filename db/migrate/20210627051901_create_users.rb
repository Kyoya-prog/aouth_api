class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :role
      t.string :password_digest
      t.integer :register_user
      t.integer :update_user
      t.integer :lock_version
      t.datetime :activated_at
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
