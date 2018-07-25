Rails.application.routes.draw do
	namespace :api do
		resources :users
		get '/login', to:'users#login'
		get '/check_email',to:'users#check_email'
		get '/email_approval/:id', to: 'users#email_approval'
		get '/forgot_password', to: 'users#forgot_password'
		get '/reset_password/:id', to: 'users#reset_password'
		get '/test/', to: 'users#test'
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
