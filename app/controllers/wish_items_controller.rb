class WishItemsController < ApplicationController
  def index
    wish_items
  end

  def new
    wish_item
    wish_list
  end

  def create
    if WishItem.create(wish_item_params)
      redirect_to wish_list
    else
      redirect_back
    end
  end

  def edit
    wish_item
    wish_list
  end

  def update
    if wish_item.update(wish_item_params)
      flash[:success] = 'Wish item updated successfully'
      redirect_to wish_list
    else
      redirect_back
    end
  end

  def show
    wish_item
  end

  def destroy
    if wish_item.delete
      redirect_to wish_list
    else
      flash[:error] = 'Could not delete wish list'
      redirect_back
    end
  end

  private

  def wish_list
    @wish_list ||= wish_item.wish_list
  end

  def wish_item
    @wish_item ||= WishItem.where(id: params[:id]).first
    @wish_item ||= WishItem.new(wish_item_params)
  end

  def wish_items
    @wish_items ||= @wish_list.wish_items if @wish_list
    @wish_items ||= WishItem.all

    @wish_items.sort_by! do |i|
      i.title.downcase.strip
    end
  end

  def wish_item_params
    params.require(:wish_item).permit!
  end
end
