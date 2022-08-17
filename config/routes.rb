Rails.application.routes.draw do
  # resources :posts
  # root 'posts#index'

# get '/posts' => 'post#index'
# get '/posts/:id' => 'post#show', as: 'post'
# get '/posts/:id/new' => 'post#new', as: 'new_post'

  

  # scope module :admin do
  #   resources :posts
  # end

# FOR ADMIN/ARTICLES
    
        # resources :articles
      # root 'articles#index'
    
    namespace :admin do
      resources :articles  
    end

    # scope module: 'admin' do
    #   resources :articles
    # end

    # resources :articles

    # scope '/admin' do
    #   resources :articles
    # end

  end