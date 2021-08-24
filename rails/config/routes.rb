Rails.application.routes.draw do
  devise_for :usuarios, controllers: {registrations:"registrations"}
  root 'main#login'
  resources :registrations, only: [:create, :update]
  resources :sessions
  post "/sessions/usuario"
  
end
