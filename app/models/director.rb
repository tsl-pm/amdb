class Director < ActiveRecord::Base
  attr_accessible :name, :dob
  
  # has many movies
  
end
