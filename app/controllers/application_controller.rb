class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user,:logged_in?,:is_user?, :is_doctor?, :is_admin?

    def current_user
      if session[:email]
        if (User.exists?(:email => session[:email]))
          @current_user ||= User.find_by(:email => session[:email])
        elsif (Doctor.exists?(:email => session[:email]))
          @current_user ||= Doctor.find_by(:email => session[:email])
        end
      session[:user_id] = @current_user.id
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
      Doctor.exists?(:email => session[:email])
    end

    def is_user?
      User.exists?(:email => session[:email])
    end

    def is_admin?
      if (User.exists?(:email => session[:email]))
        user = User.find_by(:email => session[:email])
        user.admin?
      end
    end
end
