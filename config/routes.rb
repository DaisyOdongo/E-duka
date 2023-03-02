Rails.application.routes.draw do
  namespace :admin do 
    resources :products
    resources :categories
    resources :shops
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "landing#index"
end
