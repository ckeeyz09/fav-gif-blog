Rails.application.routes.draw do
  

  get 'session/new'

  #route to new post page
  get 'newpost' => 'posts#new'
  #route to create new post
  post '/posts' => 'posts#create'
  #route to new user html page
  get '/signup',to: 'users#new', as: 'signup'
  #route to create new user
  post '/users',to: 'users#create', as: 'new_user'
  #routes for sessions
  get '/login',to: 'sessions#new' 
  post '/login',to: 'sessions#create'
  get '/logout',to: 'sessions#destroy'

  #route to root page
  root "site#index"

  resources :users, except: [:new, :create] do
    resources :posts
  end
end
