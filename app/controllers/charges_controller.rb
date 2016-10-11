class ChargesController < ApplicationController
  def new
end

def create
  # Amount in cents
  @amount = 2000

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

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to conversations_path(sender_id: current_user.id, recipient_id: @user.id), method: 'post'
end
end
