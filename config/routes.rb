Rails.application.routes.draw do
  root 'accueil#index'
  post 'session/create'
  delete 'session/destroy'
  get 'accueil/index'
  get 'accueil/auctions'
  get 'accueil/agents'
  get 'accueil/reviews'
  get 'accueil/about'

  #Users controller
  #get 'users/new', :as => "new_users"

  resources :users

  resources :users do
  resources :auctions
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
