# frozen_string_literal: true

FactoryBot.define do
  factory :rating do
    user { build :user }
    movie { build :movie }
    value { rand 1..10 }
  end
end
