class ChatsController < ApplicationController
  before_action :load_chat, only: %i[show]

  def index
    @new_chat = Chat.new
    @chats = Chat.all
  end

  def show
    @messages = @chat.messages
    @new_message = current_user&.messages&.build
  end

  def create
    @new_chat = current_user&.chats&.build(chat_params)

    @new_chat.broadcast_append_to :chats if @new_chat.save
  end

  private

  def chat_params
    params.require(:chat).permit(:title)
  end

  def load_chat
    @chat = Chat.find(params[:id])
  end
end
