class Plot < ActiveRecord::Base

  validates :label, :presence => true

  has_one :plot_information
  has_and_belong_to_many :tasks, :class_name => "Plot", :foreign_key => "plot_id", :association_foreign_key => "task_id", :join_table => "plots_tasks" 
end
