Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :movies
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get '/secret', to: 'pages#secret', as: :secret
  get '/home', to: 'pages#home', as: :home

end
