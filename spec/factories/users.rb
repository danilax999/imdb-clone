# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    fullname { Faker::Name.name }
    email { Faker::Internet.email }
    password { 'password' }
  end
end
