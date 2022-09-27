# frozen_string_literal: true

class Category < ApplicationRecord
  self.primary_key = :name

  has_many :movie_categories,
           foreign_key: 'category_name',
           inverse_of: :category,
           dependent: :destroy

  has_many :movies,
           through: :movie_categories,
           inverse_of: :categories

  validates :name, presence: true, uniqueness: true
end
