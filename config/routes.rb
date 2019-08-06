Rails.application.routes.draw do
  root 'pages#main'
  get '/about', to: "pages#about"
  get '/login', to: 'pages#loginpage'
  post '/login', to: 'pages#login'
  get '/help', to: 'pages#help'
  get '/tos', to: 'pages#tos'

  resources :recipes
  resources :postman_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
