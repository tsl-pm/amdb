class Movie < ActiveRecord::Base
  attr_accessible :director_id, :title
  
  def director
    Director.find_by_id(self.director_id)
  end
  
  
  
end
