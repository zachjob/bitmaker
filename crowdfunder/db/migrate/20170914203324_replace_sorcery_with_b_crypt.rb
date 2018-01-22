class ReplaceSorceryWithBCrypt < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :crypted_password
    remove_column :users, :remember_me_token
    remove_column :users, :remember_me_token_expires_at
    remove_column :users, :salt
    add_column :users, :password_digest, :string
  end
end
