# frozen_string_literal: true

class CreateMovieCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_categories do |t|
      t.belongs_to :movie
      t.string :category_name, null: false

      t.timestamps
      t.index :category_name
    end
  end
end
