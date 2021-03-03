Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'gallery', to: 'gallery#index'
  resources :contacts, only: [:index, :new, :create]
  root "home#index"
end
