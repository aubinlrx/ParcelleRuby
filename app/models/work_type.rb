class WorkType < ActiveRecord::Base

	validates :label, :presence => true

	has_many :works
end
