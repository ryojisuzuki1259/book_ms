Rails.application.routes.draw do
  devise_for :admins
  
  root "home#top"
  
  resources :end_users
  get "end_users/select" => "end_users#select"
  resources :books
  resources :genres, only: [:index, :create, :update]
  resources :shelves, only: [:index, :create, :update]
  resources :cart_items, only: [:index, :create, :destroy]
  delete "cart_items/destroy_all" => "cart_items#destroy_all"
  resources :lends, only: [:index, :show, :new, :create] do
    patch "lend_details/:id" => "lend_details#update"
    collection do
      post :confirm
    end
  end
  resources :lend_details
  get '/search', to: 'search#search'
  get "home/search" => "home#search"
  get "home/search_book" => "home#search_book"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
