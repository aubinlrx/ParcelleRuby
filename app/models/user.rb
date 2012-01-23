class User < ActiveRecord::Base
  validates :login, :presence => true
  validates :password, :length => { :minimum => 6, :maximum => 30 }
  validates :password, :email, :confirmation => true
  validates :password_confirmation, :email_confirmation, :presence => true

  belongs_to :group
end
