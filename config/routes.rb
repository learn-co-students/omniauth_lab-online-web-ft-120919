Rails.application.routes.draw do
  # Add your routes here
  match '/auth/github/', to: 'sessions#create', via: [:get, :post]
  match '/auth/:developer/callback', to: 'sessions#create', via: [:get, :post]

  root 'welcome#home'
end
