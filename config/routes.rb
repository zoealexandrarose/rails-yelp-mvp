Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # viewer can see the restaurants, add a new one, see the details and reviews, and add a new review
  # we have the power to delete reviews if we wish from the console

  resources :restaurants do
    resources :reviews, only: %i[new create]                # only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
