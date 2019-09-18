Rails.application.routes.draw do
  resources :posts
  devise_for :users do
    get '/users/sign_out', to: 'devise/sessions#destroy', :method => :delete
  end
  root 'posts#index'
end
