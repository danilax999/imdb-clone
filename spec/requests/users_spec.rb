# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:user) { build :user }
  let(:valid_params) do
    {
      user: {
        fullname: user.fullname,
        email: user.email,
        password: user.password,
        password_confirmation: user.password
      }
    }
  end
  let(:invalid_params) do
    {
      user: {
        fullname: user.fullname,
        email: '',
        password: user.password,
        password_confirmation: user.password
      }
    }
  end

  describe 'GET /users/sign_up' do
    subject { get '/users/sign_up' }
    it { should render_template 'devise/registrations/new' }
  end

  describe 'POST /users' do
    it do
      expect { post '/users', params: valid_params }.to(change { User.count }.by(1))
    end
    it do
      expect { post '/users', params: invalid_params }.to_not(change { User.count })
    end
  end

  describe 'GET /users/sign_up' do
    subject { get '/users/sign_up' }
    it { should render_template 'devise/registrations/new' }
  end

  describe 'GET /users/sign_in' do
    subject { get '/users/sing_in' }
    it { should render_template 'devise/sessions/new' }
  end
end
