Rails.application.routes.draw do
  resources :page
  resources :session
  resources :users

  get '/signup', to: 'users#new'
  get '/login', to: 'session#new'

  get '/about', to: 'page#show', id: 'about', as: 'about'
  get '/contact', to: 'page#contact', id: 'contact', as: 'contact'
  get '/help', to: 'page#help', id: 'help', as: 'help'
  get '/welcome', to: 'page#show', id: 'welcome', as: 'welcome'

  root 'page#welcome'
end
