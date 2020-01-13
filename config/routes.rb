Rails.application.routes.draw do

# search country routes
  root :to => 'countries#search'

  get '/countries' => 'countries#show'

  post '/countries' => 'countries#create'



# Login and Log out routes
  get '/login' => 'session#new'

  post '/login' => 'session#create'

  delete '/login' => 'session#destroy'

  resources :users

end
