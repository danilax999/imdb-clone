# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject { build :movie }

  describe :associations do
    it { should have_many :categories }
    it { should have_many :ratings }
  end

  describe :validations do
    it { should validate_presence_of :title }
  end
end
