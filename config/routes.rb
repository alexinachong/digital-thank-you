Rails.application.routes.draw do
  get 'notes/create'

  get 'orders/create'

  get 'customers/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :customers, only: [:show, :create]
  resources :orders, only: [:show, :create]
  resources :notes, only: [:show, :create]

end
