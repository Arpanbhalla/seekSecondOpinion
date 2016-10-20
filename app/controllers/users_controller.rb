class UsersController < ApplicationController
  #  username        :string
  #  firstname       :string
  #  lastname        :string
  #  email           :text
  #  dob             :date
  #  image           :text
  #  password_digest :text


  def index
    @users=User.all
    @all_doctors=@users.where(:doctor=>true)
    if params[:search]
      @search_text="%#{params[:search]}%"
      @doctors = @all_doctors.where("lower(doctor_speciality) LIKE ?", @search_text.downcase).order("created_at DESC")
    else
      @doctors = @all_doctors.all.order('created_at DESC')
    end
  end

  def search

  end

  def edit
    @user = User.find params[:id]
  end

  def show
    @is_charged = false
    @user=User.find params[:id]
    if logged_in?
      @conversations=Conversation.all
      @payment_entry = Charge.find_by(:doctor => @user.id , :user =>current_user.id)
      if @payment_entry.present?
        @is_charged = @payment_entry.payment_charged?
      end
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    if params[:file].present?
        # Then call Cloudinary's upload method, passing in the file in params
        req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image transformation methods.
      @user.image = req["public_id"]
    end
    if @user.save
      if @user.doctor?
        redirect_to user_path(@user)
      else
        redirect_to login_path
      end
    end
  end

  def update
    @user = User.find params[:id]
    if params[:file].present?
          # Then call Cloudinary's upload method, passing in the file in params
          req = Cloudinary::Uploader.upload(params[:file])
        # Using the public_id allows us to use Cloudinary's powerful image transformation methods.
        @user.image = req["public_id"]
    end
    # We're using update_attributes here because we don't want to make to PUT requests (.update to update the attributes in @user_params, then .save to update the image)
    @user.update_attributes(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to users_path

  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :dob, :doctor_qualifications, :doctor_speciality, :doctor_expertise, :doctor_professional_experience, :doctor_awards_recognitions, :doctor_memberships, :doctor_publications, :doctor, :password, :password_confirmation)
  end
end
