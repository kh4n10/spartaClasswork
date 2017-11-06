# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


boris = Author.create({
	name: 'Boris Blad',
	net_worth: 25,
	dob: '25/11/1890'
	})

vlad = Author.create({
	name: 'Vlad Zi Impaler',
	net_worth: 30,
	dob: '25/10/2016'
	})


book_1 = Book.create({
	title: 'Mentul murder',
	blurb: 'puwopa mentul murder appended',
	genre: 'thriller'
	})


book_2 = Book.create({
	title: 'Lyf ov boz',
	blurb: 'puwopa mentul story baht boz',
	genre: 'thriller'
	})

book_3 = Book.create({
	title: 'My empire',
	blurb: 'book documenting it all',
	genre: 'non-fiction'
	})

book_4 = Book.create({
	title: 'lalala',
	blurb: 'puwopa lalala',
	genre: 'thriller'
	})

boris.books.push(book_1)
boris.books.push(book_2)
boris.save

vlad.books.push(book_3)
vlad.books.push(book_4)
vlad.save