Rails.application.routes.draw do
  resources :databases
  devise_for :users
	root to: "home#index"
end
