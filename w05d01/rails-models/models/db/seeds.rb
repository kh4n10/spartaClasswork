# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


videos = Video.create([{
	name: 'South Park - jobs',
	description: 'a snippet from south park episode',
	url: 'https://www.youtube.com/watch?v=toL1tXrLA1c'}, {
	name: 'Bruce Lee',
	description: 'quote of Bruce Lees infamous quote',
	url: 'https://www.youtube.com/watch?v=cJMwBwFj5nQ'}, {
	name: 'Bane cat',
	description: 'A cat impersonating bane',
	url: 'https://www.youtube.com/watch?v=5ywjpbThDpE'}])
