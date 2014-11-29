module SessionsHelper
  def current_user
    @current_user ||=
      User.find session[:current_user_id] if session[:current_user_id]
  end

  def update_current_user(user)
    update_current_user_id(user.try :id)
  end

  def update_current_user_id(id)
    session[:current_user_id] = id
  end
end
