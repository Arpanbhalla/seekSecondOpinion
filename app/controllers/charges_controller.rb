class ChargesController < ApplicationController
  def new
    @doctor = User.find(params[:doctor_id])
end

def create
  # Amount in cents
  @amount = 2000
  @doctor = User.find(params[:doctor_id])

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'aud'
  )
  if charge["paid"] == true
    Charge.create!(:doctor_id => @doctor.id, :user_id => current_user.id, :payment_charged =>true)
    redirect_to user_path(@doctor)
  end
rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to conversations_path(sender_id: current_user.id, recipient_id: @user.id), method: 'post'
end
private
def charge_params
  params.require(:charge).permit(:user_id, :doctor_id)
end
end
