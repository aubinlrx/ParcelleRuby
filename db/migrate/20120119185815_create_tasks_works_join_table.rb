class CreateTasksWorksJoinTable < ActiveRecord::Migration
  def change
    create_table :tasks_works, :id => false do |t|
      t.integer :task_id
      t.integer :work_id
    end
  end
end
