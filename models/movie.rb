class Movie < ActiveRecord::Base
  validates :title, presence: true
  validates :rating, presence: true

  scope :elite, -> { where("rating >= 97") }

  has_many :theater_movies
  has_many :theaters, through: :theater_movies
end
