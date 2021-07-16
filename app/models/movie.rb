class Movie < ActiveRecord::Base
  def self.all_ratings()
    return ['G', 'PG', 'PG-13', 'R']
  end
  
  def self.parse_ratings(hash)
    if hash.nil?
      return []
    else
      return hash.keys
    end
  end
  
  def self.with_ratings(ratings_list)
    where(rating: ratings_list)
  end
end
