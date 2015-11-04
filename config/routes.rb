Rails.application.routes.draw do

  resources :kinds

  resources :users do
    resources :rentals do
      resources :reviews
    end
  end
end
