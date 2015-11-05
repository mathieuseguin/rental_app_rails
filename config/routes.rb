Rails.application.routes.draw do

  resources :cities do
    member do
      get 'rentals'
    end
  end

  resources :kinds

  resources :users do
    resources :rentals do
      resources :reviews
    end
  end

  root to: 'users#index'
end
