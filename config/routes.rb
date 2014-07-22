Rails.application.routes.draw do
  get "wish_items/index"
  get "wish_items/new"
  get "wish_items/create"
  get "wish_items/edit"
  get "wish_items/update"
  get "wish_items/destroy"
  get "wish_item/index"
  get "wish_item/new"
  get "wish_item/create"
  get "wish_item/edit"
  get "wish_item/update"
  get "wish_item/destroy"
  get "wish_lists/index"
  get "wish_lists/new"
  get "wish_lists/create"
  get "wish_lists/edit"
  get "wish_lists/update"
  get "wish_lists/destroy"
  resources :comments
  resources :families
  resources :page
  resources :permissions
  resources :relationships
  resources :sessions
  resources :wish_item
  resources :wish_lists
  resources :up_votes
  resources :upload_files
  resources :users

  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/about', to: 'page#about', as: 'about'
  get '/contact', to: 'page#contact', as: 'contact'
  get '/help', to: 'page#help', as: 'help'
  get '/welcome', to: 'page#welcome', as: 'welcome'

  root 'page#welcome'
end
