class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user,:logged_in?,:is_user?, :is_doctor?, :is_admin?

    def current_user
      if session[:user_id]
        if (User.exists?(:id => session[:user_id]))
          @current_user ||= User.find(session[:user_id])
        elsif (Doctor.exists?(:id => session[:user_id]))
          @current_user ||= Doctor.find(session[:user_id])
        end
      end
    end

    def logged_in?
      !!current_user
    end

    def require_user
      if !logged_in?
        flash = "You must be logged in to perform that action"
        redirect_to root_path
      end
    end

    def is_doctor?
      Doctor.exists?(:id => session[:user_id])
    end

    def is_user?
      User.exists?(:id => session[:user_id])
    end

    def is_admin?
      if (User.exists?(:id => session[:user_id]))
        user = User.find_by(:id => session[:user_id])
        user.admin?
      end
    end
end
