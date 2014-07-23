class WishListsController < ApplicationController
  def index
    wish_lists
  end

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

  def destroy
  end

  private

  def wish_lists
    @wish_lists ||= user.wish_lists
    @wish_lists ||= WishList.by_updated_at
  end

  def user
    @user ||= User.find_by_id params[:user_id]
    @user ||= User.new
  end
end
