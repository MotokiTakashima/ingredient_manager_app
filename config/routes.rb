Rails.application.routes.draw do
  root "posts#index"
  devise_for :users, controllers: {
       registrations: "users/registrations",
       passwords: "users/passwords"
  }
  resources :posts
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
end
