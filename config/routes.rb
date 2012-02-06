Trellin::Application.routes.draw do

  resources :credentials

  resources :users

  resources :text_blocks
  resources :proses
  resources :abilities

  match '/auth/:provider/callback', to: 'sessions#create'
  match '/auth/failure', to: 'sessions#failure'
  match 'logout', to: 'sessions#logout'

  match 'index' => 'static#index'
  match 'history' => 'trellin#history'
  match 'creation' => 'trellin#creation'
  match 'time' => 'trellin#time'
  match 'background' => 'trellin#background'

  root :to => 'static#index'

end
