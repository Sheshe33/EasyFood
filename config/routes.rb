Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  resources :orders, only: [:update, :index] do
    resources :meals, only: [:index] do
      resources :orders_items, only: [:create]
    end
  end
  resources :menus
  #resources :meals do
    #resources :categories
  #end
end
