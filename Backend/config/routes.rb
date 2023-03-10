Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :shops, param: :slug
      resources :reviews, only: [:create, :destroy, :edit]
      resources :users, only: [:create, :destroy, :edit]
  end

  get '*path', to: 'pages#index', via: :all
  end
end
