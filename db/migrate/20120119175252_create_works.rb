class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :label
      t.references :work_type

      t.timestamps
    end
    add_index :works, :work_type_id
  end
end
