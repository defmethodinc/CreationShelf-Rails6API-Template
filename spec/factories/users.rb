FactoryBot.define do
  factory :user, aliases: ['creator'] do
    email { Faker::Internet.unique.email }
    name { Faker::Name.name }
  end
end
