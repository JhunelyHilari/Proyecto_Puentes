Rails.application.routes.draw do

  get 'users/new'
  get 'sessions/new'
  

  root    'principal#home'
  get     'home'     => 'principal#home'
  get     'help'     => 'principal#help'
  get     'contact'  => 'principal#contact'
  get     'about'    => 'principal#about'
  get     'news'     => 'principal#news'

  get    'signup'    => 'users#new'
  get    'login'     => 'sessions#new'
  post   'login'     => 'sessions#create'
  delete 'logout'    => 'sessions#destroy'

  resources :users



end
