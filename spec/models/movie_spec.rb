# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject { build :movie }

  describe :validations do
    it { should validate_presence_of :title }
  end
end
