Rails.application.routes.draw do
  root to: 'welcome#home'
  match '/auth/github/callback', to: 'sessions#create', via: [:get, :post]
end
