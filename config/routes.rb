Rails.application.routes.draw do
  root 'dashboard#index'
  
  devise_for :users,
  path: "account",
  path_names: {
    sign_up: "sign-up",
    sign_in: "sign-in",
    sign_out: "sign-out",
    password: "password",
    confirmation: "verify",
    edit: "settings"
  }

  resources :dashboard
end
