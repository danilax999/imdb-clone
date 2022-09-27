# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject { build :movie }

  describe :associations do
    it { should have_many :categories }
  end

  describe :validations do
    it { should validate_presence_of :title }
  end
end
