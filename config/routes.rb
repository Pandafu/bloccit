Rails.application.routes.draw do
  get 'sponsored_posts/show'

  get 'sponsored_posts/new'

  get 'sponsored_posts/edit'

# #1
  resources :topics do

    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end

# #2
get 'about' => 'welcome#about'

  root 'welcome#index'
end
