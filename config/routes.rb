Rails.application.routes.draw do
# #1
  resources :topics do

    resources :posts, except: [:index]
  end

  # #7
  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

# #2
get 'about' => 'welcome#about'

  root 'welcome#index'
end
