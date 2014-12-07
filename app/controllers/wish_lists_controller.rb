class WishListsController < ApplicationController
  def index
    wish_lists
  end

  def new
    wish_list
  end

  def create
    if @wish_list = WishList.create(wish_list_params)
      redirect_to wish_list
    else
      redirect_back
    end
  end

  def edit
    wish_list
  end

  def update
    wish_list
  end

  def show
    wish_list
  end

  def destroy
    binding.pry
    family = wish_list.family
    if wish_list.delete
      redirect_to family
    else
      flash[:error] = 'Could not delete wish list'
      redirect_back
    end
  end

  private

  def wish_list_params
    params.require(:wish_list).permit(
      :id,
      :user_id,
      :created_at,
      :updated_at,
      :title,
    ) if params[:wish_list]
  end

  def wish_list
    @wish_list ||= WishList.where(id: params[:id]).first
    @wish_list ||= WishList.new(wish_list_params)
  end

  def wish_lists
    @wish_lists ||= user.wish_lists
    @wish_lists ||= WishList.by_updated_at
  end

  def user
    @user ||= User.find_by_id params[:user_id]
    @user ||= User.new
  end
end
