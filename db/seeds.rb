# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.destroy_all
# users = User.create([
# 	{
# 		first_name: "Brett",
# 		last_name: "Kadowaki",
# 		rating: 9,
# 		location: "Out of this World"
# 	},
# 	{
# 		first_name: "Justin",
# 		last_name: "Jitti",
# 		rating: 8.99999999,
# 		location: 'Santa Monica'
# 	},	
# 	{
# 		first_name: "Kevin",
# 		last_name: "Backend",
# 		rating: 10,
# 		location: "Los Angeles"
# 	},

# ]);

Item.destroy_all
items = Item.create([
	{
		name: "Ikea Desk",
		description: "Desk that does desky things",
		condition: "descent",
		est_value: 20,
		willing_to_trade_for: "electronics"
	},
	{
		name: "iPad",
		description: "Pad of i",
		condition: "like new",
		est_value: 200,
		willing_to_trade_for: "furniture"
	},
	{
		name: "Brandon",
		description: "Worthless financial analyst",
		condition: "old and beat up",
		est_value: 2,
		willing_to_trade_for: "food"
	},	
	{
		name: "Basketball hoop",
		description: "Hoop for basketball",
		condition: "brand new",
		est_value: 150,
		willing_to_trade_for: "tv's"
	},	
	{
		name: "Ray Ban sunglasses",
		description: "Polarized sunglasses",
		condition: "like new",
		est_value: 180,
		willing_to_trade_for: "High heels"
	},	
	{
		name: "Lazy Boy",
		description: "Single seater lazy boy sofa chair",
		condition: "heavily used",
		est_value: 75,
		willing_to_trade_for: "Game consoles"
	},	
	{
		name: "Evander Hollyfield's ear",
		description: "cartilidge",
		condition: "old",
		est_value: 75000,
		willing_to_trade_for: "Mike Tyson poster"
	},	
	{
		name: "Long Board",
		description: "8.5 ft Becker long board",
		condition: "used",
		est_value: 500,
		willing_to_trade_for: "Jewelry"
	}
]);