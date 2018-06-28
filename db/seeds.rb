require 'random_data'

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
Question.ind_or_create_by(title: "A unique title", body: "A unique body")
puts "#{Question.count}"

 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{Advertisement.count} advertisement created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} questions created"
