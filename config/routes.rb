Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/', to: 'todos#index'
  post '/', to: 'todos#create'
  patch '/:id', to: 'todos#update'
  delete '/:id', to: 'todos#destroy'
end
