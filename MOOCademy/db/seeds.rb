# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'bundler'
Bundler.require

3.times do
	Course.create(title: Faker::OnePiece.character,description: Faker::OnePiece.quote)			
end

15.times do
	Lesson.create(title: Faker::Zelda.character, body: Faker::Zelda.item, course_id: Course.all.sample.id)			
end