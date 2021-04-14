Rails.application.routes.draw do
  resources :reflections
  resources :users

  get 'sessions/new'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/users/:id' => 'users#show'
  get '/users/edit' => 'users#edit'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/signout' => 'sessions#destroy'
  
  root "home#index"
end
