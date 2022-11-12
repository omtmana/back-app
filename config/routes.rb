Rails.application.routes.draw do
  resources :contacts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "contact#index"

  get '/contacts', to: 'contacts#index'
  post '/contacts', to: 'contacts#create'
end
