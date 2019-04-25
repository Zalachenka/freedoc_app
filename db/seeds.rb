require 'faker'
100.times do
	city = City.create!(name: Faker::Nation.capital_city)
end
puts "100 fake cities created"
100.times do
	doc = Doctor.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, zip_code: Faker::Address.zip_code, city_id: rand(1..City.count) )
end
puts "100 fake docs created"
100.times do
	pat = Patient.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, city_id: rand(1..City.count) )
end
puts "100 fake patients created"
100.times do
	spe = Specialty.create!(name: ["Neurology", "Psychology", "Oncology", "Cardiology", "Radiology", "Obstetrics", "Pediatry", "General Medicine", "Urology", "Ophtalmology"].sample)
end
puts "100 fake specialties created"
100.times do
	rdv = Appointment.create!(date: Faker::Date.forward(23), city_id: rand(1..City.count), doctor_id: rand(1..Doctor.count), patient_id: rand(1..Patient.count))
end
puts "100 fake appointments created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
