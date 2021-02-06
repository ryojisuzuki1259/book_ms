Rails.application.routes.draw do
  devise_for :admins
  
  root "home#top"
  
  resources :end_users
  get "end_users/select" => "end_users#select"
  resources :books
  resources :genres, only: [:index, :create]
  resources :shelves, only: [:index, :create]
  resources :cart_items, only: [:index, :create, :destroy]
  delete "cart_items/destroy_all" => "cart_items#destroy_all"
  resources :lends, only: [:index, :show, :create] do
    patch "lend_details/:id" => "lend_details#update"
  end
  post "lends/confirm" => "lends#confirm"
  resources :lend_details
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
