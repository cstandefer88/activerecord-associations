class Theater < ActiveRecord::Base
  validates :name, presence: true

  has_many :theater_movies
  has_many :movies, through: :theater_movies
end
