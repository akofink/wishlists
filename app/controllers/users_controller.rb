class UsersController < ApplicationController
  def new
    user
  end

  def create
    if user.save
      flash[:success] = "User account created with username <strong>#{user.username}</strong>"
      redirect_to :login
    else
      render :new
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
    users
  end

  private

  def user
    @user ||= User.new(user_params) if params[:user]
    @user ||= User.find(params[:id]) if params[:id]
    @user ||= User.new
  end

  def users
    @users ||= User.order(:username)
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
