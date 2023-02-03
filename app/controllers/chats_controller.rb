class ChatsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def index
    @chats = Chat.all
  end

  def show

  end

  def new
    
  end

  def create
    
  end

  private

  def chat_params
    params.require(:chat).permit(:title)
  end
end
