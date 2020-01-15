Rails.application.routes.draw do


  # show home page
  root :to => 'pages#home'

  get '/attractions/map' => 'attractions#map'


# Login and Log out routes
  get '/login' => 'session#new'

  post '/login' => 'session#create'

  delete '/login' => 'session#destroy'

  # searches
  get '/countries/search' => 'countries#search'
  get '/attrations/search' => 'attractions#search'
  get '/cities/search' => 'cities#search'

  resources :users

  resources :countries

  resources :cities

  resources :attractions

  resources :wishlists


  post '/wishlist/add_country/:id' => 'wishlists#add_country', as: 'add_wishlist_country'

end
