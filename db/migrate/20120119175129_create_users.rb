class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password_hash
      t.string :password_salt
      t.string :email
      t.references :group
      t.integer :disabled
      t.text :created
      t.text :modified

      t.timestamps
    end
    add_index :users, :group_id
  end
end
