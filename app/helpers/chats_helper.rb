module ChatsHelper
  def created_at(chat)
    chat.created_at.strftime('Created at %F')
  end
end
