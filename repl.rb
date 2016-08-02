require 'active_record'
require 'pg'
require 'pry'

require_relative 'models/movie.rb'
require_relative 'models/theater.rb'
require_relative 'models/theater_movie.rb'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  database: 'devflix1',
  host:     'localhost'
)

Movie.create(title: "Lion King", rating: 97)
Theater.create(name: "The Theater")

binding.pry

puts "Goodbye!"
