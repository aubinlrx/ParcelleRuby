class User < ActiveRecord::Base
  #pour interdire toutes autres données pour des champs autres que : email, password, username, email_confirmation, password_confirmation
  attr_accessible :login, :password, :email, :password_confirmation, :email_confirmation, :group_id
  
  attr_accessor :password
  
  before_save :encrypt_password
  
  validates :login, :group_id, :password, :email, :presence => true
  validates :password, :length => { :minimum => 6, :maximum => 30 }
  validates :password, :email, :confirmation => true
  validates :password_confirmation, :email_confirmation, :presence => true

  belongs_to :group
  
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
