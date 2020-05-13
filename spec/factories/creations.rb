FactoryBot.define do
  factory :creation, aliases: ['holder'] do
    creator
    sequence(:name) { |n| "creation-#{n}" }
  end
end
