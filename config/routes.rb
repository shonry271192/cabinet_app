Rails.application.routes.draw do
  
  #devise_for :users
   # get 'welcome/index'
devise_for :users do
  get '/users/sign_out' => 'devise/sessions#destroy'
end

  resources :docs
    authenticated :user do
  	root "docs#index", as: "authenticated_root"
  end
  
  #This entry will move us to the root --> static web page that we had created
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end