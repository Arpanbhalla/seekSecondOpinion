class MessagesController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end
  #
  # def unread_messages
  #   @conversation.messages.where({:read => false}).count
  # end

  def index
    @messages = @conversation.messages
    if params[:message]
      @messages = @conversation.messages
    end
    if @messages.last
      if @messages.last.user_id != current_user.id
        @messages.last.read = true;
      end
    end

    @message = @conversation.messages.new
  end

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    if params[:message][:images].present?
      params[:message][:images].each do |image|
        req = Cloudinary::Uploader.upload(image)
        @message.images << req["public_id"]
      end
    end
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    else
      redirect_to :back
    end
  end

  def destroy
    @message = @conversation
    @message.destroy
    redirect_to @conversation.messages
  end

  def generator
    render :json => @generated_name
  end

private
  def message_params
    params.require(:message).permit(:body, :user_id, :images, :read)
  end
end
