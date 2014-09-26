# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
users = User.create([
	{
		first_name: "Brett",
		last_name: "Kadowaki",
		email: "brett.kadowaki@gmail.com",
		password: "hello",
		rating: 9
	}
]);

Item.destroy_all
items = Item.create([
	{
		name: "Ikea Desk",
		description: "Desk that does desky things",
		condition: "descent",
		est_value: 20,
		willing_to_trade_for: "electronics"
	}
]);