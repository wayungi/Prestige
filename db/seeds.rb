# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Create vehicles
vitz = Vehicle.create(name:'vitz', image:'https://picsum.photos/200', drive_fee:18000, purchase_fee:46000000)
alphard = Vehicle.create(name:'Alphard', image:'https://picsum.photos/200', drive_fee:18000, purchase_fee:46000000)
rav4 = Vehicle.create(name:'Rav4', image:'https://picsum.photos/200', drive_fee:20000, purchase_fee:30000000)
corsa = Vehicle.create(name:'Corsa', image:'https://picsum.photos/200', drive_fee:12000, purchase_fee:10000000)
subaru = Vehicle.create(name:'Subaru', image:'https://picsum.photos/200', drive_fee:25000, purchase_fee:36000000)
lancer = Vehicle.create(name:'Lancer', image:'https://picsum.photos/200', drive_fee:30000, purchase_fee:45000000)

#Create users
wayungi = User.create(name:'Wayungi', password:'12345', email:'wayungi@gmail.com', contact:'0779855744')
isaac = User.create(name:'Isaac', password:'12345', email:'isaac@gmail.com', contact:'0779855744')
peter = User.create(name:'peter', password:'12345', email:'peter@gmail.com', contact:'0778855744')
ojok = User.create(name:'ojok', password:'12345', email:'ojok@gmail.com', contact:'0777855744')
kyra = User.create(name:'kyra', password:'12345', email:'kyra@gmail.com', contact:'0776855744')

#Create Theme selection
Theme.create(user:wayungi, vehicle:rav4, book_date:Date.today, name:'Rav4')
Theme.create(user:wayungi, vehicle:corsa, book_date:Date.today, name:'Rav4')
Theme.create(user:ojok, vehicle:vitz, book_date:Date.today, name:'Rav4')
Theme.create(user:peter, vehicle:lancer, book_date:Date.today, name:'Rav4')

