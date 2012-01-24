class Task < ActiveRecord::Base

  validates :date, :presence => true
  
  has_and_belong_to_many :plots, :class_name => "Task", :foreign_key => "task_id", :association_foreign_key => "plot_id", :join_table => "plots_tasks" 
  has_and_belong_to_many :works, :class_name => "Task", :foreign_key => "task_id", :association_foreign_key => "work_id", :join_table => "tasks_works"  
  has_and_belong_to_many :workers, :class_name => "Task", :foreign_key => "task_id", :association_foreign_key => "worker_id", :join_table => "tasks_workers"  
end
