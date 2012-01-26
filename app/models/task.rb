class Task < ActiveRecord::Base

  validates :date, :presence => true
  
end
