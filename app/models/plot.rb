class Plot < ActiveRecord::Base

  validates :label, :presence => true

  has_one :plot_information, :dependent => :destroy
  accepts_nested_attributes_for :plot_information
  
  has_many :join_tables
  has_many :tasks,    :through => :join_tables
end
