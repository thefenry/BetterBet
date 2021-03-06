Betterbet::Application.routes.draw do

  root to: "dashboard#index"
  get '/dashboard', to: 'dashboard#index'
  get '/landing', to: 'dashboard#landing', as: ''

  get '/users/autocomplete', to: 'users#autocomplete', as: 'autocomplete_users'
  get '/auth/:provider/callback', to: 'sessions#facebook_signup'

  resources :sessions, only: [:create]
  get '/logout', to: 'sessions#destroy'
  get '/login', to: 'sessions#new'

  resources :friendships, only: [:create, :destroy]

  resources :users
  get '/signup', to: 'users#new'

  resources :goals, except: [:show, :index] do
    resources :charges, only: [:new, :create]
  end
  put '/goals/:id/complete', to: 'goals#complete', as: 'complete_goal'
  put '/goals/:id/terminate', to: 'goals#terminate', as: 'terminate_goal'

  post '/goals/buddy_status', to: 'goals#buddy_status'
  put '/goals/:id/confirm', to: 'goals#confirm', as: 'confirm_goal'

  post '/goals/status', to: 'goals#status'

  resources :recipients, only: [:new, :create]

  mount Soulmate::Server, :at => '/sm'
end