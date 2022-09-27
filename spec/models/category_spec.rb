# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { build :category }

  describe :fields do
    it { should have_db_index :name }
  end

  describe :validations do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }
  end
end
