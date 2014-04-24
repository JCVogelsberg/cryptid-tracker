CryptidTracker::Application.routes.draw do
  devise_for :users
  resources :users
<<<<<<< HEAD
  root to: 'pages#map'
=======

  root :to => "users#index"
>>>>>>> ae68288f573877d7c5d872d3aa8fb77f3a014212
end
