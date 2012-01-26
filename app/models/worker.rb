class Worker < ActiveRecord::Base

	validates :nom, :prenom, :presence => true

end
