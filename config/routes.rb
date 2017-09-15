Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:contacts, only: [:new, :create]
root to: 'pages#home'

resources :events
get "/images", to: "pages#index", as: "images"
get "/blogs/page", to: "pages#blogs", as: "blogs"
get "/events/show", to: "events#show", as: "show"

root to: "pages#index"

resources :images
end
