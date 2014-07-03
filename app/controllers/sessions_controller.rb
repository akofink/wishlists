class SessionsController < ApplicationController
  before_filter :set_up_session

  def new
  end

  def create
    if @session.valid_password?
      flash[:success] = 'Logged in'
      update_current_user @session.user
      redirect_to current_user
    else
      redirect_to :back
    end
  end

  def destroy
    update_current_user_id nil
    redirect_to :root
  end

  private

  def set_up_session
    @session = Session.new(login_params)
  end

  def login_params
    if params[:session]
      params
        .require(:session)
        .permit(:username, :password)
    else
      params
    end
  end
end
