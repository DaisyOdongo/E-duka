Rails.application.routes.draw do
  namespace :admin do 
    resources :products
    resources :categories
    resources :shops
    resources :dashboard, only: [:index] do
      collection do
        get "back_office", to: "dashboard#back_office"
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "landing#index"
end
