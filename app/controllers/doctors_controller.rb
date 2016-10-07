class DoctorsController < ApplicationController
  def index
  end

  def new
    @doctor = Doctor.new
  end

  def show
    @doctor= Doctor.find params[:id]
  end

  def edit
  end

    def create
      @doctor = Doctor.create(doctor_params)
      redirect_to doctor_path(@doctor)
    end

    private
    def doctor_params
      params.require(:doctor).permit(:image, :doctors_fullname, :doctors_qualifications, :doctors_speciality, :doctors_expertise, :doctors_professional_experience, :doctors_awards_recognitions, :doctors_memberships, :doctors_publications, :doctors_email,
      :password, :password_confirmation)

    end
end
