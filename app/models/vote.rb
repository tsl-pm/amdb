class Vote < ActiveRecord::Base
  attr_accessible :movie_id, :user_id
  
  belongs_to :user
  belongs_to :movie
end
