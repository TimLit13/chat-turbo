Rails.application.routes.draw do
  devise_for :users
  root "chats#index"

  resources :chats, only: %i[index show create]
  resources :messages, only: :create
end
