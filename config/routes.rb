Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "about", to: "pages#about"
  resources :contacts, only: [:new, :create ]
  get '/contacts', to: 'contacts#new', as: 'contact'
  get 'contacts/sent'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
