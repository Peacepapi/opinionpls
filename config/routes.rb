Rails.application.routes.draw do

  	devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  	resources :categories, only: [:show]

	resources :questions do
		resources :choices do
			post 'vote', to: 'votes#vote'
		end
	end

	root 'questions#index'

end
