Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/profile' => 'users#show'

  get '/user/:username' => 'wishes#index', as: 'wishes'
  post '/user/:username' => 'wishes#create', as: 'new_wish'
  get '/user/:username/:wish' => 'wishes#show', as: 'wish'
  delete '/user/:username/:wish' => 'wishes#destroy'
  put '/user/:username/:wish' => 'wishes#update'
  patch '/user/:username/:wish' => 'wishes#update'

end
