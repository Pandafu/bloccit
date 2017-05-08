Rails.application.routes.draw do
# #1
  resources :topics do

    resources :posts, except: [:index]
  end

# #2
get 'about' => 'welcome#about'

  root 'welcome#index'
end
