class PlotInformation < ActiveRecord::Base
  validates :surface, :commune, :section, :numero, :gps, :location, :presence => true 

  belongs_to :plot
end
