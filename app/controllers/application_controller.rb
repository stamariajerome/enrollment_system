class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  private
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
    !!current_user
  end

  def require_user
    if !user_signed_in?
      # TODO delete logger ap and refactor
      logger.ap 'There is no user currently logged in!'
      redirect_to root_path
    end
  end
end
