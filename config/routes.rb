Rails.application.routes.draw do
  # get 'dose/new'

  # get 'dose/create'

  # get 'dose/destroy'

  # resources :users do
  #   resources :cocktails, only: [:new, :create]
  # end'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]

  root to: "cocktails#index"
end
