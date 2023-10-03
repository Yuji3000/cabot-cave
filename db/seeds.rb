# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

resident1 = Resident.create!(id: 1, name: "Jessica Fletcher", age: 65, occupation: "Mystery writer")
resident2 = Resident.create!(id: 2, name: "Dr. Seth Hazlitt", age: 70, occupation: "Town Doctor")

course1 = Course.create!(id: 1, name: "Crime Scenes 101")
course2 = Course.create!(id: 3, name: "Fingerprinting")

resident_course1 = ResidentCourse.create!(resident: resident1.id, course: course1.id)
resident_course1 = ResidentCourse.create!(resident: resident1.id, course: course2.id)