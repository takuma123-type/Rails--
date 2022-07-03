Rails.application.routes.draw do
  root to: 'fivech#index'
  resources :fivech, only: [:new, :create, :edit, :update, :delete, :destroy]

end
