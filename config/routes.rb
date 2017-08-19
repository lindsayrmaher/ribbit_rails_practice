Rails.application.routes.draw do
  get 'sessions/new'

  post 'sessions/create'

  get 'sessions/destroy'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#new'
end
