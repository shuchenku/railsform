# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Type.create(title: 'lost', description: 'lost')
Type.create(title: 'found', description: 'found')

Item.delete_all

type_pair = ["lost","found"]

20.times do |n|

	product = Faker::Commerce.product_name

	Item.create(title: product,
		description: Faker::Lorem.paragraph,
		item_type: type_pair[rand(2)])
end




    # t.string   "title"
    # t.text     "description"
    # t.string   "item_type"