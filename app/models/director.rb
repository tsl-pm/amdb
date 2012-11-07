class Director < ActiveRecord::Base
  attr_accessible :name, :dob
  
  has_many :movies  

  validates :name, presence: true, uniqueness: true
  
  validates :dob, presence: true
  
end
