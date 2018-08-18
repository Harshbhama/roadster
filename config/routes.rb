Rails.application.routes.draw do
  resources :posts

  get 'index/home', to: 'index#home'


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
