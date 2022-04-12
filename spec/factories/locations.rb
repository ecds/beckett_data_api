# frozen_string_literal: true

FactoryBot.define do
  factory :location do
    name { Faker::Movies::HitchhikersGuideToTheGalaxy.location }
    description { Faker::Movies::HitchhikersGuideToTheGalaxy.quote }
    alternate_names { [Faker::Movies::HitchhikersGuideToTheGalaxy.planet] }
    links { [Faker::Internet.url] }
  end

  after(:create) do |instance, _evaluator|
    instance.reindex(refresh: true)
  end
end
