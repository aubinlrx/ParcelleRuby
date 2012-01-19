class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.text :email
      t.references :group
      t.integer :disabled
      t.text :created
      t.text :modified

      t.timestamps
    end
    add_index :users, :group_id
  end
end
