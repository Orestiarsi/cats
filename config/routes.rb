Rails.application.routes.draw do
  resources :cats

  resource :session, only: :create
  resources :cats, defaults: { format: :json }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
