Rails.application.routes.draw do



  root 'homepage#index'


  resources :users
  resources :doctors

  get '/login'      => 'session#new', :as => "login"
  post '/login'     => 'session#create'
  delete '/logout'  => 'session#destroy', :as => "logout"

end
