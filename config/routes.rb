Rails.application.routes.draw do
# #1
  resources :topics do

    resources :posts, except: [:index]
  end

  # #7
  resources :users, only: [:new, :create]
  post 'users/confirm' => 'users#confirm'

# #2
get 'about' => 'welcome#about'

  root 'welcome#index'
end
