Rails.application.routes.draw do
  resources :user_profiles
  devise_for :users
  resources :wines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#welcome'
end
