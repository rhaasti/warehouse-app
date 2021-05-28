Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: [:new, :create] do
    member do
      get :item_cycle_count
  end
end

  resources :cycle_counts, only: [:new, :create] do
    member do
      get :item_cycle_count
  end
end

  resources :item_cycle_counts, only: [:new, :create]

  # devise_for :user
end

