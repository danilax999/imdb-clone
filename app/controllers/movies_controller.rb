# frozen_string_literal: true

class MoviesController < ApplicationController
  before_action :authenticate_user!, only: %i[rate]

  def index
    @movies = Movie.all
    authorize! :index, Movie
  end

  def show
    @movie = find_movie
    authorize! :index, @movie
  end

  def rate
    @movie = find_movie
    authorize! :rate, @movie

    rating = current_user.rate_movie @movie, params[:rating]
    flash[:errors] = rating.errors unless rating.save

    render action: :show
  end

  # def new; end

  # def create; end

  # def update; end

  # def destroy; end

  private

  def find_movie
    Movie.find params[:id]
  end
end
