# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Director.destroy_all
Actor.destroy_all
Movie.destroy_all
Role.destroy_all

directors = [
  { :name => "Christopher Nolan", :dob => Date.parse("30/07/1970") },
  { :name => "Francis Ford Coppola", :dob => Date.parse("07/04/1939") },
  { :name => "Frank Darabont", :dob => Date.parse("28/01/1959") },
  { :name => "Ron Howard", :dob => Date.parse("01/03/1954") },
  { :name => "George Lucas", :dob => Date.parse("14/05/1944") },
  { :name => "Steven Spielberg", :dob => Date.parse("18/12/1946") }
]

actors = [
  { :name => "Christian Bale", :dob => Date.parse("30/01/1974") },
  { :name => "Al Pacino", :dob => Date.parse("25/04/1940") },
  { :name => "Tim Robbins", :dob => Date.parse("16/10/1958") },
  { :name => "Harrison Ford", :dob => Date.parse("13/07/1942") },
  { :name => "Morgan Freeman", :dob => Date.parse("06/01/1937") }
]

movies = [
  { :title => "Star Wars: A New Hope", :year => 1977, :director => "George Lucas" },
  { :title => "E.T.", :year => 1982, :director => "Steven Spielberg" },
  { :title => "Raiders of the Lost Ark", :year => 1981, :director => "Steven Spielberg" },
  { :title => "Apollo 13", :year => 1995, :director => "Ron Howard" },
  { :title => "Minority Report", :year => 2002, :director => "Steven Spielberg" },
  { :title => "The Dark Knight", :year => 2008, :director => "Christopher Nolan" },
  { :title => "The Godfather", :year => 1972, :director => "Francis Ford Coppola" },
  { :title => "The Godfather: Part II", :year => 1974, :director => "Francis Ford Coppola" },
  { :title => "The Shawshank Redemption", :year => 1994, :director => "Frank Darabont" },
]

roles = [
  { :name => "Bruce Wayne", :movie => "The Dark Knight", :actor => "Christian Bale" },
  { :name => "Michael Corleone", :movie => "The Godfather", :actor => "Al Pacino" },
  { :name => "Indiana Jones", :movie => "Raiders of the Lost Ark", :actor => "Harrison Ford" },
  { :name => "Han Solo", :movie => "Star Wars: A New Hope", :actor => "Harrison Ford" },
  { :name => "Andy Dufresne", :movie => "The Shawshank Redemption", :actor => "Tim Robbins" },
  { :name => "Red Redding", :movie => "The Shawshank Redemption", :actor => "Morgan Freeman" }
]



Director.create directors
Actor.create actors

movies.each do |movie|
  d = Director.find_by_name(movie[:director])
  Movie.create :title => movie[:title], :year => movie[:year], :director_id => d.id
end

roles.each do |role|
  m = Movie.find_by_title(role[:movie])
  a = Actor.find_by_name(role[:actor])
  Role.create :name => role[:name], :movie_id => m.id, :actor_id => a.id
end











