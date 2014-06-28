class UsersController < ApplicationController
  def new
    user
  end

  def create
    if user.save
      redirect_to user
    else
      redirect_back
    end
  end

  def edit
  end

  def update
  end

  def show
    user
  end

  def index
  end

  private

  def user
    @user ||= (User.new(user_params) if params[:user]) ||
      (User.find(params[:id]) if params[:id]) ||
      (User.new)
  end

  def users
    User.all
  end

  def user_params
    params
      .require(:user)
      .permit(
        :username,
        :email,
        :first_name,
        :last_name,
        :password,
        :password_confirmation
      )
  end
end
