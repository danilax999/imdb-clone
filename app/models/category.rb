# frozen_string_literal: true

class Category < ApplicationRecord
  self.primary_key = :name

  validates :name, presence: true, uniqueness: true
end
