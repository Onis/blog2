Blog2::Application.routes.draw do

  root 'posts#index'
  resources :posts
end
