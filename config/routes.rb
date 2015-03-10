Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users, only: [:show]
  resources :items
  resources :orders
  resources :categories

  namespace 'admin' do 
    resources :categories
  end

end
