Trellin::Application.routes.draw do

  resources :credentials

  resources :users

  resources :text_blocks
  resources :proses
  resources :abilities

  match '/auth/:provider/callback', to: 'sessions#create'
  match 'logout', to: 'sessions#logout'

  match 'index' => 'static#index'
  match 'history' => 'static#history'
  match 'creation' => 'static#creation'
  match 'time' => 'static#time'
  match 'background' => 'static#background'

  root :to => 'static#index'

end
