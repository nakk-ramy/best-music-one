Rails.application.routes.draw do
  devise_for :users
  root to: "songs#index"
  resources :songs do
    collection {get "search"}
  end
  resources :users, only: :show
end
