Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'pages#home'

get "/images/page", to: "pages#images", as: "images"
get "/blogs/page", to: "pages#blogs", as: "blogs"

end
Rails.application.routes.draw do
  root to: "posts#index"

  resources :posts
end
