class MessagesController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    @message = Message.new(permited_params)

    if @message.save
      render :confirmation
    else
      render :index
    end
  end

  private

  def permited_params
    params.require(:message).permit(:to, :content)
  end
end
