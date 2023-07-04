Rails.application.routes.draw do
  get 'restaurants/name'
  get 'restaurants/address'
  get 'restaurants/phone_number'
  get 'restaurants/rating:integer'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :restaurants, only: [:index, :show, :new, :create ] do
    # resources :reviews, only: [:new, :create]
  end
end
