class Worker < ActiveRecord::Base

	validates :nom, :prenom, :presence => true

  has_many :join_tables
  has_many :tasks,    :through => :join_tables
end
