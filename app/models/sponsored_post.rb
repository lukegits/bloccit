class SponsoredPost < ApplicationRecord
  belongs_to :topic
  has_many :title, body:, price:
end
