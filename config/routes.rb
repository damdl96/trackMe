Rails.application.routes.draw do
  get 'logstoday', to: 'logs#today'
  get 'helpme', to: 'help#index'
  root 'logs#today'
  resources :activities, :logs
end
