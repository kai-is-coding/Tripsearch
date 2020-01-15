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
  
  post '/wishlist/add_country/:id' => 'wishlists#add_country', as: 'add_wishlist_country'

end
