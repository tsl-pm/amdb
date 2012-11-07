class Vote < ActiveRecord::Base
  attr_accessible :movie_id, :user_id
  
  belongs_to :user
  belongs_to :movie

  validate :no_chicago_style_voting
  validate :only_three_votes_per_user
  
  def only_three_votes_per_user
    if self.user.votes.count >= 3
      errors.add(:user_id, "has already voted three times!")
    end
  end
  
  def no_chicago_style_voting
    if Vote.where(:user_id => self.user_id, :movie_id => self.movie_id).exists?
      errors.add(:base, "Can't vote more than once for this movie.")
    end
  end
  
end
