Trellin::Application.routes.draw do

  resources :abilities

  match 'index' => 'static#index'
  match 'history' => 'static#history'
  match 'creation' => 'static#creation'
  match 'time' => 'static#time'

  root :to => 'static#index'

end
