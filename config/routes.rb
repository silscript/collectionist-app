Rails.application.routes.draw do

  # Devise
  devise_for :users

  # Trigger the index action in our posts controller.
  # root to: 'prints#index'
  root to: "pages#about"


  # Get the static pages.
  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'

  # Generate RESTful routes for the models.
  resources :users
  resources :prints do
    resources :comments
  end

end
