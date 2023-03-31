# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Create vehicles
Vehicle.create(name:'Alphard', image:'https://picsum.photos/200', drive_fee:18000, purchase_fee:46000000)
Vehicle.create(name:'Rav4', image:'https://picsum.photos/200', drive_fee:20000, purchase_fee:30000000)
Vehicle.create(name:'Corsa', image:'https://picsum.photos/200', drive_fee:12000, purchase_fee:10000000)
Vehicle.create(name:'Subaru', image:'https://picsum.photos/200', drive_fee:25000, purchase_fee:36000000)
Vehicle.create(name:'Lancer', image:'https://picsum.photos/200', drive_fee:30000, purchase_fee:45000000)

#Create users
User.create(name:'Isaac', password:'12345', email:'isaac@gmail.com', contact:'0779855744')
User.create(name:'peter', password:'12345', email:'peter@gmail.com', contact:'0778855744')
User.create(name:'ojok', password:'12345', email:'ojok@gmail.com', contact:'0777855744')
User.create(name:'kyra', password:'12345', email:'kyra@gmail.com', contact:'0776855744')
