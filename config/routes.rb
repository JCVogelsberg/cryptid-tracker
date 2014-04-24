CryptidTracker::Application.routes.draw do
  devise_for :users
  resource :sightings

  root to: 'pages#map'
end
