class SorceryCore < ActiveRecord::Migration[4.2]
  def change

    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email,            :null => false
      t.string :crypted_password, :null => false
      t.string :salt,             :null => false

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
