Rails.application.routes.draw do
  get 'notes/create'

  get 'orders/create'

  get 'customers/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :customers, only: [:create]
  resources :orders, only: [:create]
  resources :notes, only: [:create]

end
