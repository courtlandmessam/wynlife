Rails.application.routes.draw do
  resources :wynthoughts
  resources :suggestions

  root 'suggestions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
