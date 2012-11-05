class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_many :votes
  has_many :movies, :through => :votes
end
