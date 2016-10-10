Rails.application.routes.draw do




  root 'homepage#index'


  resources :users

  resources :conversations do
    resources :messages
  end


  get '/login'      => 'session#new', :as => "login"
  post '/login'     => 'session#create'
  delete '/logout'  => 'session#destroy', :as => "logout"

end
