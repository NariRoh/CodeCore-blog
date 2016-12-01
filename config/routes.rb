Rails.application.routes.draw do

  devise_for :users
  root 'posts#index'
  get '/about' => 'pages#about'

  resources :posts do
    resources :comments
  end
end
