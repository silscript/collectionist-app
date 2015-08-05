Rails.application.routes.draw do

  devise_for :users

  # Trigger the index action in our posts controller.
  root to: 'prints#index'
  
  # Generate RESTful routes for the models.
  resources :prints do
    resources :comments
  end

end