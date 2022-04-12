# frozen_string_literal: true

FactoryBot.define do
  factory :work do
    title { Faker::Music::Prince.album }
    alternate_titles { Faker::Music::Prince.song }
    description { Faker::Music::Prince.lyric }
    publication_info { Faker::Music::Prince.lyric }
    published { Faker::Boolean.boolean }
    translator { Faker::Music::Prince.band }
    performed_by { Faker::Music::Prince.band }
  end

  after(:create) do |instance, _evaluator|
    instance.reindex(refresh: true)
  end
end
