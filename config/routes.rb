Rails.application.routes.draw do
  resources :categories
  resources :catergories
  root to: "posts#index"
  resources :posts do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
