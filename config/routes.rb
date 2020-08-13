Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
  delete '/doses/:id', to: 'doses#destroy', as: 'dose'
  root 'cocktails#index'
end
