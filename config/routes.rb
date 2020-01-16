Rails.application.routes.draw do


  # show home page
  root :to => 'pages#home'



# Login and Log out routes
  get '/login' => 'session#new'

  post '/login' => 'session#create'

  delete '/login' => 'session#destroy'

  # searches
  get '/countries/search' => 'countries#search'
  # add a map into country search page
  get '/countries/search' => 'countries#search'

  get '/cities/search' => 'cities#search'
  # add a map into city search page
  get '/cities/search' => 'cities#search'

  get '/attractions/search' => 'attractions#search'
  # add a map into attraction search page
  get '/attractions/search' => 'attractions#map'

  resources :users

  resources :countries

  resources :cities
  post '/wishlist/add_city/:id' => 'wishlists#add_city', as: 'add_wishlist_city'

  resources :attractions

  post '/wishlist/add_attraction/:id' => 'wishlists#add_attraction', as: 'add_wishlist_attraction'
  resources :wishlists

  # save favourite place into wishlist
  post '/wishlist/add_country/:id' => 'wishlists#add_country', as: 'add_wishlist_country'


  # adding new images into image model
  post '/image/add_user/:id' => 'images#add_user', as: 'add_image_user'
  post '/image/add_country/:id' => 'images#add_country', as: 'add_image_country'
  post '/image/add_city/:id' => 'images#add_city', as: 'add_image_city'
  post '/image/add_attraction/:id' => 'images#add_attraction', as: 'add_image_attraction'
end
