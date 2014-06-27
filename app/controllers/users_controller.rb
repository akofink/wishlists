class UsersController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
  end
  
  private

  def user_params
    params
      .require(:user)
      .allow(
        :user_name,
        :email,
        :first_name,
        :last_name,
        :password,
        :password_confirmation
      )
  end
end
