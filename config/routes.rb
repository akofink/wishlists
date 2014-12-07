Rails.application.routes.draw do
  resources :dashboards

  resources :comments
  resources :families do
    resources :wish_lists
  end
  resources :family_memberships
  resources :page
  resources :permissions
  resources :relationships
  resources :sessions
  resources :wish_items
  resources :wish_lists
  resources :up_votes
  resources :upload_files

  resources :users do
    resources :wish_lists
    resources :families
  end

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
