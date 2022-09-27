# frozen_string_literal: true

class Rating < ApplicationRecord
  belongs_to :user, inverse_of: :ratings
  belongs_to :movie, inverse_of: :ratings

  validates :value,
            presence: true,
            inclusion: { in: 1..10 }
end
