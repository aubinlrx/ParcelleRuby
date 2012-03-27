class Task < ActiveRecord::Base

  validates :date, :presence => true
  
  has_many :join_tables
  has_many :equipment, :through => :join_tables
  has_many :works, :through => :join_tables
  has_many :workers, :through => :join_tables
  has_many :plots, :through => :join_tables
end
