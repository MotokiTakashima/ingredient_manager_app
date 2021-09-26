Rails.application.routes.draw do
  root "posts#top"
  devise_for :users, controllers: {
       registrations: "users/registrations",
       passwords: "users/passwords"
  }
  get "/index/:genre", to: "items#index"
  resources :posts
  resources :memos
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
end
