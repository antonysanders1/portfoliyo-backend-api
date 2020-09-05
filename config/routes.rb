Rails.application.routes.draw do
  resources :users do
    resources :works
  end
  resources :works
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
