Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
resources :beers, only: [:index, :new, :create]

  resources :breweries
  resources :customers
  resources :favorites

end
