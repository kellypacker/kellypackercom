Kellypacker::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get "artworks/detail"

  get "/art-work" => "art_groups#index", :as => 'art_groups'
  get "/art-work/:title" => "art_groups#show", :as => 'art_group'
  resources :artworks

  get "home/index"

  root :to => "home#index"

  get "/contact" => "pages#contact"
  get "/profile" => "pages#profile"
  get "/web-development" => "pages#web_development"

 end
