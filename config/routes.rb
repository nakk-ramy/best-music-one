Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations',
  }
  root to: "songs#index"
  resources :songs do
    collection do
      get 'search'
    end
    member do
      get 'artist'
    end
    resources :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:new, :show]
end
