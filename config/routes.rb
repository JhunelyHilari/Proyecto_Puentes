Rails.application.routes.draw do
  
  get 'users/new'

  get 'sessions/new'
  get 'principal/index'

  root 'principal#index'
  get    'principal'   => 'principal#index'
  get    'news' => 'principal#news'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users
 
end
