Rails.application.routes.draw do
  root 'welcome#index'
  resources :activities, :logs
end
