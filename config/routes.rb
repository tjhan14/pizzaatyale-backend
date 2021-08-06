Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :pizzas#, only: [:show]
      resources :restaurants 
      resources :types
      resources :user_pizzas
      resources :users
    end
  end
end
