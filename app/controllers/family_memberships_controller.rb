class FamilyMembershipsController < ApplicationController
  def create
    unless FamilyMembership.create(family_membership_params)
      flash[:error] = 'Could not join family'
    end
    redirect_back
  end

  def destroy
    if FamilyMembership.find(params[:id]).destroy
      redirect_back
    else
      flash[:error] = 'Could not remove user from family'
      redirect_back
    end
  end

  private

  def family_membership_params
    params.permit(:family_id, :user_id)
  end
end
