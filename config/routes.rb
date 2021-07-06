Rails.application.routes.draw do

  root to: "pages#home"


  devise_for :users

  resources :items, only: [:index, :show, :new, :create] do
    resources :item_cycle_counts, only: [:new, :create]
  end

  resources :cycle_counts, only: [:index, :show, :new, :create] do
    resources :item_cycle_counts, only: [:new, :create]
  end

  resources :vendors, only: [:index, :show, :new, :create] do
    resources :items, only: [:index, :show, :new, :create]
  end


end



#the key nested requires the parent key
