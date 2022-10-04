# frozen_string_literal: true

FactoryBot.define do
  factory :movie do
    title { Faker::Movie.title }
    text { Faker::Lorem.paragraphs(number: 4).join(' ') }
  end
end
