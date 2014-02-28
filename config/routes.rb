Tweeter::Application.routes.draw do
 
  devise_for :users
  get "static_pages/index"
  get "tweets/new"
  get "tweets/create"
  get "tweets/destroy"
  get "users/index"

  
  # You can have the root of your site routed with "root"
  root 'tweets#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

end
