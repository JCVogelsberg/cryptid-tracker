CryptidTracker::Application.routes.draw do
  devise_for :users
  resources :sightings

  root :to => "users#index"
end
