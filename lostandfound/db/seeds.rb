# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

puts "creating types"
Type.destroy_all

book = Type.create(title: "book" ,description: "Books, etc" )
clothing = Type.create(title: "clothing",description: "jeans, tshirt etc" )
cellphone = Type.create(title: "cellphone", description: "iphone, galaxy etc" )
computer  = Type.create(title: "computer", description: "mac, windows etc" )

Item.destroy_all
puts "creating books"
1.upto(5) do |i|
	Item.create( title: Faker::Lorem.word , description: Faker::Lorem.characters(10) , owner: Faker::Name.name, type_id: book.id )
end


puts "creating clothings"
1.upto(5) do |i|
	Item.create( title: Faker::Lorem.word , description: Faker::Lorem.characters(5) , owner: Faker::Name.name, type_id: clothing.id )
end


puts "creating cellphones"
1.upto(5) do |i|
	Item.create( title: Faker::Lorem.word , description: Faker::Lorem.characters(15) , owner: Faker::Name.name, type_id: cellphone.id )
end


puts "creating computers"
1.upto(5) do |i|
	Item.create( title: Faker::Lorem.word , description: Faker::Lorem.characters(10) , owner: Faker::Name.name, type_id: computer.id )
end