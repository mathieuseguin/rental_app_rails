Rails.application.routes.draw do
  resources :kinds

  resources :users do
    resources :rentals
  end
end
