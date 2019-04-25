require 'faker'
Doctor.destroy_all
City.destroy_all
Patient.destroy_all
Specialty.destroy_all
Appointment.destroy_all
10.times do
	city = City.create!(name: Faker::Nation.capital_city)
end
puts "10 fake cities created"
10.times do
	doc = Doctor.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, zip_code: Faker::Address.zip_code, city_id: City.all.sample.id )
end
puts "10 fake docs created"
10.times do
	pat = Patient.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, city_id: City.all.sample.id )
end
puts "10 fake patients created"
10.times do
	spe = Specialty.create!(name: ["Neurology", "Psychology", "Oncology", "Cardiology", "Radiology", "Obstetrics", "Pediatry", "General Medicine", "Urology", "Ophtalmology"].sample, doctor_id: Doctor.all.sample.id)
end
puts "10 fake specialties created"
10.times do
	rdv = Appointment.create!(date: Faker::Date.forward(23), city_id: City.all.sample.id, doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id)
end
puts "10 fake appointments created"
10.times do
	link = LinkSpeDoc.create!(doctor_id: Doctor.all.sample.id, specialty_id: Specialty.all.sample.id)
end
puts "10 fake links created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
