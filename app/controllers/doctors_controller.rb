class DoctorsController < ApplicationController

  def index
    @doctor = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def show
    @doctor= Doctor.find params[:id]
    @conversations = Conversation.all
  end

  def edit
    @doctor = Doctor.find params[:id]
  end

  def create
    @doctor = Doctor.create(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  def update
    @doctor = Doctor.find params[:id]
    @doctor.update(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  def destroy
    @doctor = Doctor.find params[:id]
    @doctor.destroy
    redirect_to doctors_path

  end

  private
  def doctor_params
    params.require(:doctor).permit(:image, :firstname, :lastname, :qualifications, :speciality, :expertise, :professional_experience, :awards_recognitions, :memberships, :publications, :email,
    :password, :password_confirmation)
  end
end
