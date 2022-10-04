# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :movie_categories,
           inverse_of: :movie,
           dependent: :destroy

  has_many :categories,
           through: :movie_categories,
           inverse_of: :movies

  has_many :ratings,
           inverse_of: :movie,
           dependent: :destroy

  validates :title, presence: true

  def rating
    return 0 if ratings.empty?

    ratings.map(&:value).sum.to_f / ratings.size
  end
end
