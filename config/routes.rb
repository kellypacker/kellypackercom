Kellypacker::Application.routes.draw do

  get "home/index"
  root :to => "home#index"

  get "/artwork" => "art_groups#index", :as => "art_groups"
  get "/artwork/series/:id" => "art_groups#show", :as => "art_group"
  get "/artwork/:id" => "artworks#show", :as => "artwork"

  get "/contact" => "pages#contact"
  get "/profile" => "pages#profile"
  get "/web-development" => "pages#web_development"

  namespace :admin do
    get "/" => "admin#dashboard", :as => "dashboard"
    resources :art_groups
    resources :artworks
    resources :media
  end

 end
