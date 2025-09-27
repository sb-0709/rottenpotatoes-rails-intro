class Movie < ActiveRecord::Base
  def self.all_ratings
    distinct.pluck(:rating)
  end

  def self.with_ratings(ratings)
    return all if ratings.blank?
    where(rating: ratings)
  end
end
