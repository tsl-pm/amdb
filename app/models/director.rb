class Director < ActiveRecord::Base
  attr_accessible :name, :dob
  
  has_many :movies  

end
