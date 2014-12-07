class PageController < ApplicationController
  def show
    render id
  end

  def welcome
    redirect_to families_path if current_user
  end

  private

  def id
    params[:id]
  end
end
