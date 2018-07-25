# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#  User.create([
# 	{first_name: "sirish",last_name:"reddy",email:"sirish@gmail.com",password:"sirishreddy",password_confirmation:"sirishreddy",city:"bangalore"},
# 	{first_name: "pavan",last_name:"reddy",email:"pavan@gmail.com",password:"pavanreddy",password_confirmation:"pavanreddy",city:"hyderabad"},
# 	{first_name: "kumar",last_name:"reddy",email:"kumar@gmail.com",password:"kumarreddy",password_confirmation:"kumarreddy",city:"bangalore"},
# ])

# Manager.create([
# 	{name:"charan",email:"charan@gmail.com",password:"charanreddy",password_confirmation:"charanreddy",user_id:1,mob_number:"1234567890"},
# 	{name:"siva",email:"siva@gmail.com",password:"sivakumar",password_confirmation:"sivakumar",user_id:1,mob_number:"1234567890"},
# 	{name:"chari",email:"chari@gmail.com",password:"chari",password_confirmation:"chari",user_id:2,mob_number:"1234567890"},
# ])


Ground.create([
{name:"chinnaswami",address1:"bangalore",address2:"mg road",amenities:["dressingroom","gim"],manager_id:1,user_id:1},
{name:"rajivgandhi",address1:"chennai",address2:"mg road",amenities:["dressingroom","gim"],manager_id:1,user_id:1},
{name:"kredena",address1:"mumbai",address2:"mg road",amenities:["dressingroom","gim"],manager_id:2,user_id:1},
{name:"eden garden",address1:"kolkata",address2:"mg road",amenities:["dressingroom","gim"],manager_id:2,user_id:2},
{name:"Wankhede",address1:"hyderabad",address2:"mg road",amenities:["dressingroom","gim"],manager_id:1,user_id:1},
])
