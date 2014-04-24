CryptidTracker::Application.routes.draw do
  devise_for :users
  resources :users
  root to: 'pages#map'
end
