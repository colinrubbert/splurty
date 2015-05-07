Splurty::Application.routes.draw do

  # Routes
  root 'quotes#index'

  resources :quotes
  # The priority is based upon order of creation: first created -> highest priority.
  # More comments here .....

end
