# frozen_string_literal: true

class MovieCategory < ApplicationRecord
  belongs_to :movie, inverse_of: :movie_categories

  belongs_to :category,
             foreign_key: 'category_name',
             inverse_of: :movie_categories
end
