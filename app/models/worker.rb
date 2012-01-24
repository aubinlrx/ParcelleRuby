class Worker < ActiveRecord::Base

	validates :nom, :prenom, :presence => true

	has_and_belong_to_many :tasks, :class_name => "Worker", :foreign_key => "worker_id", :association_foreign_key => "task_id", :join_table => "tasks_workers" 
end
