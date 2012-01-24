class Work < ActiveRecord::Base

  validates :label, :presence => true

  has_and_belong_to_many :tasks, :class_name => "Work", :foreign_key => "work_id", :association_foreign_key => "task_id", :join_table => "tasks_works" 
  belongs_to :worktype
end
