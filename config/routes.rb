Rails.application.routes.draw do

  post '/login' => "sessions#create"
  delete '/logout' => "sessions#destroy"
  get '/currentUser' => "sessions#currentUser"

  resources :users do
    resources :works
  end
  resources :works
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
