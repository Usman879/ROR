# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# student = Student.create(name:"Usman", email:"hjkdshakhf", date_of_birth:"22 march")
20.times do |i|
    puts "Creating Student #{i+1}"
    Student.create(
        name:"Student #{i+1}", 
        email:"Student#{i+1}@gmail.com", 
        date_of_birth:"22 march"
        )
end
Student.all.each do |student|
    student.posts.create(title:"Dummmy Data for student #{student.id}",
    body:"Custom student content pending")
    student.posts.create(title:"Dummmy Data for student #{student.id}",
    body:"Custom student content pending")
end
Course.create(name: 'Data Structures', description:'Pending')
Course.create(name: 'DataBase', description:'Pending')
Course.create(name: 'OOP', description:'Pending')
Course.create(name: 'Project Mangement', description:'Pending')
Course.create(name: 'OOAD', description:'Pending')
