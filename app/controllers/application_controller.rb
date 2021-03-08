class ApplicationController < ActionController::Base
  helper_method :current_user
  
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :denger
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
  
  private
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  def set_locale
    I18.locale = current_user&.locale || :ja #ログインしていなければ日本語
  end
end
