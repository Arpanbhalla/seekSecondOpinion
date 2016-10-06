class UsersController < ApplicationController
  #  username        :string
  #  firstname       :string
  #  lastname        :string
  #  email           :text
  #  dob             :date
  #  image           :text
  #  password_digest :text

  def index
    @users= User.all
  end

  def edit
    @user = User.find params[:id]
  end

  def show
    @user=User.find params[:id]
  end

  def new
    @user = User.new
  end

      def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
      end

      def update
        @user = User.find params[:id]
        @user.update( user_params)
        redirect_to user_path(@user)
      end

      def destroy
        @user = User. find params[:id]
        @user.destroy
        redirect_to users_path
      end

  private
  def user_params
    params.require(:user).permit(:username, :firstname, :lastname, :email, :dob, :image, :password, :password_confirmation)
  end
end
