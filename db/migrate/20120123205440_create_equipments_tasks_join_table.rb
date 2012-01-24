class CreateEquipmentsTasksJoinTable < ActiveRecord::Migration
  def change
    create_table :equipments_tasks, :id => false do |t|
      t.integer :equipment_id
      t.integer :task_id
    end
  end
end
