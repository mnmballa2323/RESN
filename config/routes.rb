Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'agents' => 'pages#agents'
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
end
