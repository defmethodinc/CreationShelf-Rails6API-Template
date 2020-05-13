FactoryBot.define do
  factory :photo do
    holder
    sequence(:url) { |n| "http://example-photo-url.com/#{n}" }
  end
end
