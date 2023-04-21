Rails.application.routes.draw do
  devise_for :users, controllers:{
		sessions: 'users/sessions',
		registrations: 'users/registrations'
	}
	get'/member_details' => 'members#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
	resources :users
	resources :apps
end
