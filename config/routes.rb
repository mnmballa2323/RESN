Rails.application.routes.draw do
  resources :notifications
  resources :profiles
  resources :properties
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'realtors' => 'pages#agents'
  get 'single_agent' => 'pages#single_agent'
  get 'list_rental' => 'pages#list_rental'
  get 'submit_property' => 'pages#submit_property'
  get 'property' => 'pages#property'
  get 'blog' => 'pages#blog'
  get 'single_blog' => 'pages#single_blog'
  get 'my_profile' => 'pages#my_profile'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'packages' => 'pages#packages'
  get 'my_property' => 'pages#my_property'
  get 'coming_soon' => 'pages#coming_soon'
  get 'book_marked_listing' => 'pages#book_marked_listing'
  get 'buy' => 'pages#buy'
  get 'sell' => 'pages#sell'
  get 'rent' => 'pages#rent'
  get 'property_detail' => 'pages#property_detail'
  get 'mortgage' => 'pages#mortgage' 
  get 'insurance' => 'pages#insurance' 
  get 'mobileApps' => 'pages#mobile_apps' 
  get 'hotels' => 'pages#hotels' 
  get 'partners' => 'pages#partners' 
  get 'investors' => 'pages#investors' 
  get 'team' => 'pages#team' 
  get 'travel' => 'pages#travel'
  get 'list_new' => 'pages#list_new'
  get '/buy/search' => 'pages#buy_search'
  get '/rent/search' => 'pages#rent_search'
  get '/find-friend' => 'profiles#find_friends'
  get '/friend_list' => 'profiles#friend_list'
  post "profiles/add_friend" => "profiles#add_friend"
  post "profiles/remove_friend" => "profiles#remove_friend"
  
end
