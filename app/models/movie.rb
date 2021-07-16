class Movie < ActiveRecord::Base
  def self.all_ratings
    return ['G', 'PG', 'PG-13', 'R']
  end
  
  def self.with_ratings(ratings, order)
    where(rating: ratings.keys).order(order)
  end
end
