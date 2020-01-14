Rails.application.routes.draw do


  # show home page
  root :to => 'pages#home'


# Login and Log out routes
  get '/login' => 'session#new'

  post '/login' => 'session#create'

  delete '/login' => 'session#destroy'

  resources :users

  resources :countries

  resources :cities

  resources :attractions

  resources :wishlists
end
