Rails.application.routes.draw do
  resources :relationships
  resources :ribbits
  get 'sessions/new'

  post 'sessions/create'

  get 'sessions/destroy'

  get 'buddies', to: 'users#buddies', as: 'buddies'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#new'
end
