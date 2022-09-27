# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build :user }

  describe :validations do
    it { should validate_presence_of :fullname }
    it { should validate_length_of(:fullname).is_at_least(2) }

    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }

    it { should validate_presence_of :password }
  end
end
