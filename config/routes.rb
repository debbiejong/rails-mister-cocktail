Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses
    # resources :ingredients
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doses, only: [:destroy]
end
