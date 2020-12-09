Rails.application.routes.draw do
  resources :user_watch_items
  resources :watch_items
  post '/login', to: 'users#login', as: 'login'
  # post '/items', to: 'watch_items#items', as: 'items'
  resources :users 

  #new route for users based on username
  # user/:username
  # user/id
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
