Rails.application.routes.draw do
  resources :posts, only: [:create, :new] do
    resources :comments, only: [:create, :new] 
  end

  resources :likes, only: [:create, :destroy]

  # set up custom routes for Posting POST likes and Comment Likes.
  
  devise_for :users
  root "site#index"
end
