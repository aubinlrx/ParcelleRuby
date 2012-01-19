class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :label
      t.text :modele
      t.text :marque
      t.text :achat
      t.references :equipment_type

      t.timestamps
    end
    add_index :equipment, :equipment_type_id
  end
end
