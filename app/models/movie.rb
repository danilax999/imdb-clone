# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :movie_categories,
           inverse_of: :movie,
           dependent: :destroy

  has_many :categories,
           through: :movie_categories,
           inverse_of: :movies

  validates :title, presence: true
end
