class Work < ActiveRecord::Base

  validates :label, :presence => true

  belongs_to :work_type
end
