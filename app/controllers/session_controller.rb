class SessionController < ApplicationController

  def new
  end

  def create
    if (User.exists?(:email => params[:email]))
      user = User.find_by(:email => params[:email])
      if user.present? && user.authenticate( params[:password] )
        flash[:success] = "User successfully logged in"
        session[:user_id] = user.id
        redirect_to doctors_path
      else
        flash[:error] = "Your password or email is incorrect"
        redirect_to login_path
      end
    elsif (Doctor.exists?(:email => params[:email]))
      doctor = Doctor.find_by(:email => params[:email])
      if doctor.present? && doctor.authenticate( params[:password] )
        flash[:success] = "Doctor successfully logged in"
        session[:user_id] = doctor.id
        redirect_to doctor_path(doctor)
      else
        flash[:error] = "Your password or email is incorrect"
        redirect_to login_path
      end
    else
      flash[:error] = "Invalid Credentials!"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You successfully logged out"
    redirect_to root_path
  end
end
