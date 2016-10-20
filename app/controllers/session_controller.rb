class SessionController < ApplicationController
  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.doctor?
        redirect_to user_path(user)
      else
        redirect_to users_path
      end
    else
      flash[:error] = "Invalid email/password combination!"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
