Rails.application.routes.draw do

  root 'welcome#index'

  resources :frequencies

  

end
