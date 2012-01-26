class Plot < ActiveRecord::Base

  validates :label, :presence => true

  has_one :plot_information, :dependent => :destroy
  accepts_nested_attributes_for :plot_information
end
