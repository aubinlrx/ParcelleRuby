class Plot < ActiveRecord::Base
	has_and_belong_to_many :tasks, :class_name => "Plot", :foreign_key => "id", :association_foreign_key => "user_id" 
end
