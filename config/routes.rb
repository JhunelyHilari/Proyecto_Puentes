Rails.application.routes.draw do
  
  resources :users
  get 'users/new'

  get 'sessions/new'
  get 'principal/index'
  get  'principal/help'
  get  'principal/about'
  get  'principal/contact'

  root 'principal#index'
  get   'principal'   => 'principal#index'
  get   'help'    => 'principal#help'
  get    'news' => 'principal#news'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users



end
