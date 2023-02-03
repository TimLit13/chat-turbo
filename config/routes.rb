Rails.application.routes.draw do
  devise_for :users
  root "chats#index"

  resources :chats, except: %i[edit update]
end
