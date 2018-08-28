Rails.application.routes.draw do
  get 'likes/toggle'
  devise_for :users
  resources :posts

	devise_scope :user do  
	get '/users/sign_out' => 'devise/sessions#destroy'
	end 

  get 'index/home', to: 'index#home'

  post 'comment/create', to: 'comments#create', as: :comments

  delete 'comments/:id', to: 'comments#destroy', as: :comments_delete

  post 'image/create', to: 'images#create', as: :images

  root 'index#home'

  post 'likes/toggle/:post_id', to: 'likes#toggle', as: :toggle_like


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
