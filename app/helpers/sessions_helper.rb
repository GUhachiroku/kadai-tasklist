module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end
  
  def log_out
    seesion.delete(:user_id)
    @current_user = nil
  end
end
