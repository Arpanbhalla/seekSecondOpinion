class DoctorsController < ApplicationController
  def index
    @doctor =Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def show
    @doctor= Doctor.find params[:id]
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
          params.require(:doctor).permit(:image, :doctors_fullname, :doctors_qualifications, :doctors_speciality, :doctors_expertise, :doctors_professional_experience, :doctors_awards_recognitions, :doctors_memberships, :doctors_publications, :doctors_email,
          :password, :password_confirmation)

    end
end
