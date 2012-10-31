# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Director.destroy_all
Movie.destroy_all

george = Director.create :name => "George Lucas"
ron = Director.create :name => "Ron Howard"
steven = Director.create :name => "Steven Spielberg"

Movie.create :title => "Star Wars", :director_id => george.id
Movie.create :title => "Apollo 13", :director_id => ron.id
Movie.create :title => "Raiders", :director_id => steven.id
Movie.create :title => "Jaws", :director_id => steven.id




