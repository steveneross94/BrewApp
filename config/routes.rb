Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
  root to: 'pages#home'
  resources :beers, only: [:index, :new, :create]
  resources :breweries
  get '/california', to: 'breweries#get_california_breweries'
  resources :users
  resources :favorites
    post '/favorites/new', to: 'favorites#new'

end
