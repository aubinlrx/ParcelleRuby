class EquipmentType < ActiveRecord::Base

  validates :label, :presence => true

  has_many :equipment
end
