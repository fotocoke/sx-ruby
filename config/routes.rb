Rails.application.routes.draw do
  resources :exchanges
  resources :assignments
  resources :gift_lists
  resources :users
  resources :gifts
  resources :gift_links
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
