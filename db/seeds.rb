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
# 		firstname: "Brett",
# 		lastname: "Kadowaki",
# 		email: "brett.kadowaki@gmail.com"
# 	},
# 	{
# 		firstname: "Justin",
# 		lastname: "Jitti",
# 		email: "justin@gmail.com"
# 	},	
# 	{
# 		firstname: "Kevin",
# 		lastname: "Backend",
# 		email: "kevin@gmail.com"
# 	},

# ]);

Item.destroy_all
items = Item.create([
	{
		name: "Ikea Desk",
		description: "Desk that does desky things",
		condition: "descent",
		est_value: 20,
		willing_to_trade_for: "electronics",
		user_id: 1
	},
	{
		name: "iPad",
		description: "Pad of i",
		condition: "like new",
		est_value: 200,
		willing_to_trade_for: "furniture",
		user_id: 1
	},
	{
		name: "Brandon",
		description: "Worthless financial analyst",
		condition: "old and beat up",
		est_value: 2,
		willing_to_trade_for: "food",
		user_id: 2
	},	
	{
		name: "Basketball hoop",
		description: "Hoop for basketball",
		condition: "brand new",
		est_value: 150,
		willing_to_trade_for: "tv's",
		user_id: 2
	},	
	{
		name: "Ray Ban sunglasses",
		description: "Polarized sunglasses",
		condition: "like new",
		est_value: 180,
		willing_to_trade_for: "High heels",
		user_id: 3
	},	
	{
		name: "Lazy Boy",
		description: "Single seater lazy boy sofa chair",
		condition: "heavily used",
		est_value: 75,
		willing_to_trade_for: "Game consoles",
		user_id: 3
	},	
	{
		name: "Evander Hollyfield's ear",
		description: "cartilidge",
		condition: "old",
		est_value: 75000,
		willing_to_trade_for: "Mike Tyson 
		poster",
		user_id: 2	
	},	
	{
		name: "Long Board",
		description: "8.5 ft Becker long board",
		condition: "used",
		est_value: 500,
		willing_to_trade_for: "Jewelry",
		user_id: 3		
	}
]);

Trade.destroy_all
trades = Trade.create([
	{
		trader_id: 1,
		tradee_id: 2,
		trader_item_id: 27,
		tradee_item_id: 29,
		success: true
	}
]);

	