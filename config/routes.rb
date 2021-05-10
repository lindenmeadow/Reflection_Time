Rails.application.routes.draw do
  resources :reflections

  get 'sessions/new'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/signout' => 'sessions#destroy'
  
  root "home#index"
end
