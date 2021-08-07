Rails.application.routes.draw do
  devise_for :users, controllers: {
            registrations: "users/registrations",
          }
  root "posts#index"
  resources :posts
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
end
