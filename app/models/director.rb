class Director < ActiveRecord::Base
  attr_accessible :name
  
  
  def movies
    Movie.where(:director_id => self.id)
  end
  
end
