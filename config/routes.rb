Rails.application.routes.draw do
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
