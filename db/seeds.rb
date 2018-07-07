require 'random_data'

# Create Users
 5.times do
   User.create!(
 # #3
   name:     RandomData.random_name,
   email:    RandomData.random_email,
   password: RandomData.random_sentence
   )
 end
 users = User.all

# Create Topics
15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all

20.times do

  Advertisement.create!(

    title: RandomData.random_sentence,
    copy: RandomData.random_paragraph,
    price: 99
  )
end

 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     user:   users.sample,
     topic:  topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all

 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 100.times do
   Question.create!(
 # #4
     title: RandomData.random_sentence,
     body: RandomData.random_paragraph,
     resolved: false
   )
 end


  10.times do
    SponsoredPost.create!(
  # #4
      title: topics.sample,
      body: RandomData.random_paragraph,
      price: 99
    )
  end

 puts "#{Advertisement.count}"
 Advertisement.find_or_create_by(title: "A unique title", copy: "Unique copy", price: 99)
 puts "#{Advertisement.count}"

 puts "#{Post.count}"
 Post.find_or_create_by(title: "A unique title", body: "A unique body")
 puts "#{Post.count}"

 puts "#{Comment.count}"
 Comment.find_or_create_by(post: posts.sample, body: "A unique body")
 puts "#{Comment.count}"

puts "#{Question.count}"
Question.find_or_create_by(title: "A unique title", body: "A unique body")
puts "#{Question.count}"

puts "#{SponsoredPost.count}"
SponsoredPost.find_or_create_by(title: "A unique title", body: "A unique body", price: 99)
puts "#{SponsoredPost.count}"

# Create an admin user
 admin = User.create!(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )

 # Create a member
 member = User.create!(
   name:     'Member User',
   email:    'member@example.com',
   password: 'helloworld'
 )

 member = User.create!(
   name:     'Moderator User',
   email:    'moderator@example.com',
   password: 'helloworld'
 )

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Topic.count} topics created"
 puts "#{Advertisement.count} advertisement created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} questions created"
 puts "#{SponsoredPost.count} sponsored created"
