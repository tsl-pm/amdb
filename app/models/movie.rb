class Movie < ActiveRecord::Base
  attr_accessible :director_id, :title, :year
  
  belongs_to :director
  
  has_many :roles
  has_many :actors, :through => :roles
  
  has_many :votes
  has_many :users, :through => :votes
  
  # def actors
    # result = []
    #     self.roles.each do |role|
    #       result << role.actor
    #     end
    #     return result
    
    # or this
    
    # self.roles.map { |role| role.actor }
  # end
  
  validates_presence_of :director_id
  
end




