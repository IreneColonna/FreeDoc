# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


Doctor.destroy_all
Patient.destroy_all

patients = []
doctors =  []

100.times do |index|	
  Doctor.create(first_name: "docteur#{index}", last_name: "Soignant#{index}", specialty: "spécialité#{index}", zip_code: "123#{index}")
  Patient.create(first_name: "patient#{index}", last_name: "malade#{index}")
end

#50.times do 
#	date = Time.now + rand(0..21)
#	a = Appointment.create(doctor: "#{patients[rand(0..99)]}", patient: "#{patients[rand(0..99)]}", date: date)
#end 


