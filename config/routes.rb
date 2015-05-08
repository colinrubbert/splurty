Splurty::Application.routes.draw do

  # Routes
  root 'quotes#index'
  resources :quotes
  get 'about', :to => 'quotes#about'
  # The priority is based upon order of creation: first created -> highest priority.


end
