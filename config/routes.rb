Trellin::Application.routes.draw do

  resources :tracks

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
  match 'board' => 'trellin#board'
  match 'level_chart' => 'trellin#level_chart'
  match 'encounter' => 'trellin#encounter'
  match 'organizations' => 'trellin#organizations'
  match 'push' => 'trellin#push'

  root :to => 'static#index'

end
