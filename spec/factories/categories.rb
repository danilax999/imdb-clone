# frozen_string_literal: true

require 'constants'

FactoryBot.define do
  factory :category do
    name { Constants::MOVIE_CATEGORIES.sample }
  end
end
