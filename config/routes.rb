Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "restaurants", to: "restaurants#index"
  get "restaurant/new", to: "restaurants#new", as: :new_restaurant
  get "restaurant/:id", to: "restaurants#show", as: :restaurant # link_to restaurant_path(restaurant.id)
  post "restaurants", to: "restaurants#create"
  get "restaurant/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  patch "restaurant/:id", to: "restaurants#update"
  delete "restaurant/:id", to: "restaurants#destroy"

  # resources :restaurants, except: [:new, :create]
end
