class JoinTable < ActiveRecord::Base
  belongs_to :plot
  belongs_to :work
  belongs_to :worker
  belongs_to :equipment
  belongs_to :task 
end
