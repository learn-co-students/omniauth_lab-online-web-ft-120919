Rails.application.routes.draw do
  get 'welcome/home', to: 'welcome#home'
  root 'welcome#home'
  #get '/auth/:provider/callback', to: 'sessions#create'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
