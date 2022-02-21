Rails.application.routes.draw do
  devise_for :users
  root 'chatroom#index'
  resources :messages, only: [:new, :create]

  mount ActionCable.server,at: '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
