# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(email:'user@example.com', password:'password')
u2 = User.create(email:'user2@example.com', password:'password2')

p1 = u1.posts.create(title:'First Post', body:'Body First Comment')
p2 = u1.posts.create(title:'Second Post', body:'Body Second post')

p3 = u2.posts.create(title:'First Post for U2', body:'Body First Comment for U2')
p4 = u2.posts.create(title:'Second Post for U2', body:'Body Second post for U2')

p3.comments.create(body: "This post was terrible", user:u1)
p4.comments.create(body: "This second post was terrible for the second user news", user:u1)


