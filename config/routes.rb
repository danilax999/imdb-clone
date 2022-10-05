# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :movies, only: %i[index show]
  post '/movies/:id/rate', to: 'movies#rate'

  resources :users, only: %i[destroy]

  root 'movies#index'
end
