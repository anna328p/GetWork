Rails.application.routes.draw do
  resources :projects
  resources :tags
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
	resources :users
  get 'homepage/index'

	root to: 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
