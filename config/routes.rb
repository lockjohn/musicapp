Rails.application.routes.draw do

  resources :users, only: [:new,:create,:show]
  resource :session, only: [:new, :create, :destroy]
  resources :bands do
    resources :albums, only: [:new]
  end

  resources :albums, except: [:index, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'bands#index'
end
