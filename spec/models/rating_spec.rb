# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Rating, type: :model do
  subject { build :rating }

  describe :validations do
    it { should validate_presence_of :value }
    it { should validate_inclusion_of(:value).in_range(1..10) }
  end
end
