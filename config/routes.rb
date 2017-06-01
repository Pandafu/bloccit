Rails.application.routes.draw do
# #1
  resources :topics do

    resources :posts, except: [:index]
  end

  # #4 because we don't want to create any /possts/:id routes,
  # just posts/:post_id/comments routes
  resources :posts, only: [] do

  # #5
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

get 'about' => 'welcome#about'

  root 'welcome#index'
end
