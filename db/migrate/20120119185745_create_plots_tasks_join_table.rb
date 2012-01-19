class CreatePlotsTasksJoinTable < ActiveRecord::Migration
  def change
    create_table :plots_tasks, :id => false do |t|
      t.integer :plot_id
      t.integer :task_id
    end
  end
end
