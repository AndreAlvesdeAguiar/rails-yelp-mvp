# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dogDuBom = {name: "DogDuBom", address: "Praça silvio romero,Tatuapé - SP", phone: 995636695, category: "french", review: "Otimo saber, delicioso.", rating: 4 }
outroTeste = {name: "OutroTeste", address: "Augusta, Bela Vista - SP", phone: 99506677, category: "belgian", review: "Uma merda.", rating: 2 }

# EXCLAMAÇÃO NO CREATE AVISA SE NÃO CONSEGUIR CRIAR

[ dogDuBom, outroTeste ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{Restaurant.name}"
end
puts "Finished!"
