Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :items, only: [:index, :show, :new, :create] do
    resources :item_cycle_counts, only: [:new, :create]
  end

  resources :cycle_counts, only: [:index, :show, :new, :create] do
    resources :item_cycle_counts, only: [:new, :create]
  end

  resources :vendors, only: [:index, :show, :new, :create] do
    resources :items, only: [:index, :show, :new, :create]
  end

  resources :item_cycle_counts, only: [:index, :show]



end



#the key nested requires the parent key
