Tweeter::Application.routes.draw do
  resources :tweets

  devise_for :users, controllers: { registrations: "registrations"}

  root "static_pages#index"

  resources :users, only: [:index, :show]
  resources :tweets, only: [:create, :destroy]
  
  get '/welcome' => 'static_pages#welcome'
  
  get '/newsletter' => 'static_pages#newsletter'
  post '/newsletter' => 'static_pages#newsletter'
end
