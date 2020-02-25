Rails.application.routes.draw do
  root 'welcome#index'
  resources :activities, :logs

  get 'logstoday', to: 'logs#today'
end
