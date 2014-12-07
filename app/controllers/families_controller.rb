class FamiliesController < ApplicationController
  def index
    @joined = FamilyMembership.where(user_id: current_user.id).joins(:family)
    @unjoined = Family.by_updated_at - @joined.map(&:family)
  end

  def new
    family
  end

  def create
    if @family = Family.create(family_params)
      redirect_to family
    else
      redirect_back
    end
  end

  def edit
    family
  end

  def update
    family
  end

  def show
    family
  end

  def destroy
    if family.delete
      redirect_to family
    else
      flash[:error] = 'Could not delete wish list'
      redirect_back
    end
  end

  private

  def family_params
    params.require(:family).permit!
  end

  def family
    @family ||= Family.find(params[:id]) if params[:id]
    @family ||= Family.new(family_params) if params[:family]
    @family ||= Family.new

    @family.family_memberships.build unless @family.family_memberships.any?

    @family
  end

  def families
    @families ||= Family.by_updated_at
  end

  def user
    @user ||= User.find_by_id params[:user_id]
    @user ||= User.new
  end
end
