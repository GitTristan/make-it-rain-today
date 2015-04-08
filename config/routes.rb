Rails.application.routes.draw do

  root 'welcome#index'

  get 'slack_hook', to: 'slack_webhooks#new'

  resources :users do
    resources :plans
  end

end
