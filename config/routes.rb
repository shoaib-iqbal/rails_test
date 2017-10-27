Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :bugs , except: [:show]
  resources :projects, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
