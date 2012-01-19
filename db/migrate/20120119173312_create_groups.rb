class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.text :name
      t.text :created
      t.text :modified

      t.timestamps
    end
  end
end
