Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails
  resources :doses
  resources :ingredients
  root to: 'pages#cocktails'

end
