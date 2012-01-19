class CreateEquipmentTasks < ActiveRecord::Migration
  def change
    create_table :equipment_tasks do |t|
      t.references :equiment
      t.references :task

      t.timestamps
    end
    add_index :equipment_tasks, :equiment_id
    add_index :equipment_tasks, :task_id
  end
end
