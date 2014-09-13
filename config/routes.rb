Kellypacker::Application.routes.draw do

  get "/artwork" => "art_groups#index", :as => 'artwork'
  get "/artwork/:title" => "art_groups#show", :as => 'art_group'
  resources :artworks

  get "home/index"

  root :to => "home#index"

  get "/contact" => "pages#contact"
  get "/profile" => "pages#profile"
  get "/web-development" => "pages#web_development"

 end
