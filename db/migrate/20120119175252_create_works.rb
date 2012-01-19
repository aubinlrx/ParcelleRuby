class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :label
      t.references :worktype

      t.timestamps
    end
    add_index :works, :worktype_id
  end
end
