require 'rails_helper'

RSpec.describe Topic, type: :model do
  let(:name) { RandomData.random_sentence }
   let(:topic) { create(:topic) }
  it { is_expected.to have_many(:posts) }
  it { should validate_length_of(:name).is_at_least(5)}
  it { should validate_length_of(:description).is_at_least(15)}
  it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }

# #1
  describe "attributes" do
    it "has name, description, and public attributes" do
    expect(topic).to have_attributes(name: topic.name, description: topic.description)
    end

# #2
    it "is public by default" do
      expect(topic.public).to be(true)
    end
  end
end
