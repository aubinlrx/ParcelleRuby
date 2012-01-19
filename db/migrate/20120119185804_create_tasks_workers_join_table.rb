class CreateTasksWorkersJoinTable < ActiveRecord::Migration
  def change
    create_table :tasks_workers, :id => false do |t|
      t.integer :task_id
      t.integer :worker_id
    end
  end
end
