# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Director.destroy_all
Movie.destroy_all
Role.destroy_all

directors = [
  { :name => "Christopher Nolan", :dob => "07/30/1970" },
  { :name => "Francis Ford Coppola", :dob => "04/07/1939" },
  { :name => "Frank Darabont", :dob => "01/29/1959" },
  { :name => "Ron Howard", :dob => "03/01/1954" },
  { :name => "George Lucas", :dob => "05/14/1944" },
  { :name => "Steven Spielberg", :dob => "12/18/1946" }
]

movies = [
  { :title => "Star Wars: A New Hope", :year => 1977, :director => "George Lucas" },
  { :title => "E.T.", :year => 1977, :director => "Steven Spielberg" },
  { :title => "Raiders of the Lost Ark", :year => 1977, :director => "Steven Spielberg" },
  { :title => "Apollo 13", :year => 1977, :director => "Ron Howard" },
  { :title => "Minority Report", :year => 1977, :director => "Steven Spielberg" },
  { :title => "The Dark Knight", :year => 2008, :director => "Christopher Nolan" },
  { :title => "The Godfather", :year => 1972, :director => "Francis Ford Coppola" },
  { :title => "The Godfather: Part II", :year => 1974, :director => "Francis Ford Coppola" },
  { :title => "The Shawshank Redemption", :year => 1994, :director => "Frank Darabont" },
]

roles = [
  { :name => "Bruce Wayne", :movie => "The Dark Knight" },
  { :name => "Michael Corleone", :movie => "The Godfather" },
  { :name => "Indiana Jones", :movie => "Raiders of the Lost Ark" },
  { :name => "Han Solo", :movie => "Star Wars: A New Hope" },
  { :name => "Andy Dufresne", :movie => "The Shawshank Redemption" },
  { :name => "Red Redding", :movie => "The Shawshank Redemption" }
]

actors = [
  { :name => "Christian Bale", :dob => "01/30/1974" },
  { :name => "Al Pacino", :dob => "04/25/1940" },
  { :name => "Tim Robbins", :dob => "10/16/1958" },
  { :name => "Harrison Ford", :dob => "07/13/1942" },
  { :name => "Morgan Freeman", :dob => "06/01/1937" }
]

Director.create directors

movies.each do |movie|
  d = Director.find_by_name(movie[:director])
  Movie.create :title => movie[:title], :year => movie[:year], :director_id => d.id
end

roles.each do |role|
  m = Movie.find_by_title(role[:movie])
  Role.create :name => role[:name], :movie_id => m.id
end










