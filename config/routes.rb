Rails.application.routes.draw do



  get 'conversations/index'

  get 'messages/index'

  get 'messages/new'

  get 'messages/show'

  get 'messages/edit'

  root 'homepage#index'


  resources :users
  resources :doctors
  resources :messages


  get '/login'      => 'session#new', :as => "login"
  post '/login'     => 'session#create'
  delete '/logout'  => 'session#destroy', :as => "logout"

end
