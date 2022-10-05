# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!

  def destroy
    @user = current_user

    if @user.destroy
      flash[:notice] = 'User was successfully deleted'
      redirect_to root_path
    else
      flash[:alert] = 'User destroy error'
      flase[:errors] = @user.errors
    end
  end
end
