class MessagesController < ApplicationController

  def index
    @messageslast = Message.last(50)
    @message = Message.new
  end

  def create
    @message = Message.new(messages_params)

    @message.save

    redirect_to :back
  end
end

private
def messages_params
  params.require(:message).permit(:nick,:content)
end