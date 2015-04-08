Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  
  root 'welcome#index'

  get 'slack_hook', to: 'slack_webhooks#new'

  resources :users do
    resources :plans
  end

end
