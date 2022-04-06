Rails.application.routes.draw do
  devise_for :customers, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :admins, only: [:new, :create, :destroy]

  get "admin/genres" => "admin/genres#index", as: "genres"
  post "admin/genres" => "admin/genres#create"
  get "admin/genres/:id/edit" => "admin/genres#edit", as: "edit_genre"
  patch "admin/genres/:id" => "admin/genres#update", as: "update_genere"

  get "admin/products" => "admin/products#index", as: "products"
  get "admin/products/new" => "admin/products#new"
  post "admin/products" => "admin/products#create"
  get "admin/products/:id" => "admin/products#show", as: "products_show"
  get "admin/products/:id/edit" => "admin/products#edit", as: "products_edit"
  post "admin/products/:id" => "admin/product#update", as: "update_product"

end
