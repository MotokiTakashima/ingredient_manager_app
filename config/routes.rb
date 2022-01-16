Rails.application.routes.draw do
  root "top#index"
  devise_for :users, controllers: {
       registrations: "users/registrations",
       passwords: "users/passwords"
  }
  get "/index/:genre", to: "items#index"
  get "search" => "youtube#search"
  resources :users, only: [:show]
  resources :posts
  resources :memos
  resources :youtube
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
end
