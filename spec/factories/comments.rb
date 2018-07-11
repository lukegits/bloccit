FactoryBot.define do
   factory :comments do
     title RandomData.random_sentence
     body RandomData.random_paragraph
     comments
     user
     rank 0.0
   end
 end
