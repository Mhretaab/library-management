Rails.application.routes.draw do
  get 'librarians/liberarian'

  resources :issuances
  resources :categories do
  	resources :books
  end
  resources :books do 
  	resources :issuances
  end
  resources :users do
  	resources :groups
  	resources :issuances
  end
  resources :groups do
  	resources :users
  end
  post 'home/login'
  get 'home/student'
  get 'home/proffessor'
  get 'home/liberarian'
  get 'home/admin'
  get 'librarians/liberarian'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #match ':controller(/:action(/:id))', :via => :get
  root 'home#index'
end
