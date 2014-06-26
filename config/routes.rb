Rails.application.routes.draw do
  resources :page

  get '/about', to: 'pages', id: 'about', as: 'about'

  root "page#welcome"
end
