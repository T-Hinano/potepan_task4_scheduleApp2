Rails.application.routes.draw do
  root :to => 'appoints#index'
  get 'appoints/index'
  post 'appoints/new',to: 'appoints#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :appoints
end
