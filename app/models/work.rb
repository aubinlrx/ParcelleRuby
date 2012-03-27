class Work < ActiveRecord::Base

  validates :label, :presence => true

  belongs_to :work_type
  
  has_many :join_tables
  has_many :tasks,    :through => :join_tables
end
