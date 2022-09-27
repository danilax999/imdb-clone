# frozen_string_literal: true

class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :movie, null: false, foreign_key: true
      t.integer :value, null: false, default: 1

      t.timestamps
    end
  end
end
