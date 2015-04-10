Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  root 'welcome#index'

  get 'slack_hook', to: 'slack_webhooks#new'
  post 'stripe_hook', to: 'stripe_webhooks#webhook'

  #mount StripeEvent::Engine, at: '/stripe_hook'

  resources :users 

end
