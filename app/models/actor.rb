class Actor < ActiveRecord::Base
  attr_accessible :dob, :name
  
  has_many :roles
  
end
