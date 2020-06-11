Rails.application.routes.draw do
  root to: 'home#index'
  get '/search', to: 'search#search'

  namespace :api do
    namespace :v1 do
      resources :accounts, only: [:create] do
        collection do
          post :send_mobile_code
          post :sign_in
          post :sign_out
          post :reset_mobile
          post :reset_password
          get :qn_upload_token
          get :aqy_access_token
          get :refresh_aqy_token
          get :wx_token_and_ticket
        end
      end
      post '/likes', to: 'likes#create'
      delete '/likes', to: 'likes#destroy'
      resources :users, only: [:index] do
        collection do
          get :me
          get :unblock_users
          get :block_users
          post :update_nickname
          post :update_city
          post :update_avatar
        end
        member do
          post :block
          post :unblock
        end
      end
      get '/users/get_user_videos', to: 'users#get_user_videos'
      get '/start_pages', to: 'start_pages#index'
      get '/categories', to: 'categories#index'
      get '/categories/belongs_columns', to: 'categories#belongs_columns'
      post '/columns/update_nav_columns', to: 'columns#update_nav_columns'
      resources :columns, only: [:index, :create, :update] do
        collection do
          get :user_source_urls
        end
      end
      get '/comments', to: 'comments#index'
      post '/comments', to: 'comments#create'
      get '/comments/my', to: 'comments#my_comments'
      get '/follows', to: 'follows#index'
      post '/follows', to: 'follows#create'
      post '/follows/cancel', to: 'follows#destroy'
      get '/favorites', to: 'favorites#index'
      post '/favorites', to: 'favorites#create'
      post '/favorites/cancel', to: 'favorites#destroy'
      get '/cities', to: 'cities#index'
      get '/videos', to: 'videos#index'
      get '/videos/search', to: 'videos#search'
      get '/videos/home_videos', to: 'videos#home_videos'
      post '/videos/delete_file', to: 'videos#delete_file'
      get '/videos/last_update', to: 'videos#last_update'
      get '/videos/my', to: 'videos#my'
      put '/videos/:id', to: 'videos#update'
      post '/videos', to: 'videos#create'
      delete '/videos/:id', to: 'videos#destroy'
      get '/videos/:id', to: 'videos#show'
      match '*path', via: :all, to: 'root#route_not_found'
    end
  end

  get '/admin/' => 'admin#index'
  namespace :admin do
    resources :users
    resources :accounts, only: [:new, :index, :create, :destroy] do
      collection do
        get :change_password
        post :change_password_post
      end
    end
    resources :columns
    resources :videos
    resources :start_pages
    resources :cities
    resources :categories
  end
  require 'sidekiq/web'
  mount Sidekiq::Web => 'sidekiq_dash', :constraints => Authenticate.new
  match '*path', via: :all, to: 'home#error_404'
end
