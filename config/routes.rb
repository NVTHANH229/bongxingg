require 'sidekiq/web'

Rails.application.routes.draw do
  resources :book_returns
  resources :book_borroweds
  resources :books
  resources :nxbs
  resources :authors
  resources :categories
  resources :students
  resources :teachers
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
