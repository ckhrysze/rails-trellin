Trellin::Application.routes.draw do

  resources :abilities

  match 'index' => 'static#index'
  match 'history' => 'static#history'
  match 'creation' => 'static#creation'

  root :to => 'static#index'

end
