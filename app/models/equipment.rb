class Equipment < ActiveRecord::Base

  validates :label, :modele, :marque, :achat, :presence => true

  belongs_to :equipment_type
end
