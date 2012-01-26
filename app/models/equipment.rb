class Equipment < ActiveRecord::Base
  
  set_table_name "equipment"
  
  validates :label, :modele, :marque, :achat, :equipment_type_id, :presence => true
  
  belongs_to :equipment_type, :class_name => 'EquipmentType', :foreign_key => :equipment_type_id
end
