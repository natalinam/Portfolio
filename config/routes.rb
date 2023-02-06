Rails.application.routes.draw do
  resources :port_contents
  get 'angular-items', to: 'port_contents#angular'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
