Rails.application.routes.draw do
  devise_for :users
  resources :posts

	devise_scope :user do  
	get '/users/sign_out' => 'devise/sessions#destroy'
	end 

  get 'index/home', to: 'index#home'


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
