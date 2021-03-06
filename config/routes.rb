Rails.application.routes.draw do
  resources :arts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    root to: 'home#index'
  end
  resources :products do
    get 'featured_products', on: :collection
  end
end
