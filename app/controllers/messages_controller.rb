class MessagesController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    @message = Message.new(permitted_params)

    if @message.save
      render :confirmation
    else
      render :index
    end
  end

  private

  def permitted_params
    params.require(:message).permit(:to, :content)
  end
end
