Rails.application.routes.draw do
  get "home", to:'home#index'
  # get "documentales", to:'documentary_films#index'
  # get "", to:'documentary_films#new'
  # get "", to:'documentary_films#create'
  # get "series", to:'series#index'
  # get "", to:'series#new'
  # get "", to:'series#create'
  # get "peliculas", to:'movies#index'
  # get "", to:'movies#new'
  # get "", to:'movies#create'

resources :movies, only: [:index, :new, :create]
resources :series, only: [:index, :new, :create]
resources :documentary_films, only: [:index, :new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
