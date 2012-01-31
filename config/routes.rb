Trellin::Application.routes.draw do

  resources :proses

  resources :abilities

  match '/auth/:provider/callback', to: 'sessions#create'

  match 'index' => 'static#index'
  match 'history' => 'static#history'
  match 'creation' => 'static#creation'
  match 'time' => 'static#time'

  root :to => 'static#index'

end
