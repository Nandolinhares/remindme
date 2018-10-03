Rails.application.routes.draw do
  resources :requirements
  resources :databases
  devise_for :users
	root to: "home#index"
end
