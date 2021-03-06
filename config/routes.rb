Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#homepage'
  # resources :items, only: [:new, :show]

  get '/items', to: 'items#index'
  post '/items', to: 'items#create'
  
  get '/items/new', to: 'items#new'

  get '/items/:id/edit/', to: 'items#edit', as: 'edit'
  patch '/items/:id', to: 'items#update', as: 'update'

end
