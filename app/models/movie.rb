class Movie < ActiveRecord::Base
  def self.all_ratings
    distinct.pluck(:rating)
  end

  def self.with_ratings(ratings)
    if ratings.nil? || ratings.empty?
      all
    else
      where(rating: ratings)
    end
  end
end
