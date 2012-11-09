class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  
  has_secure_password
  
  has_many :votes
  has_many :movies, :through => :votes
end
