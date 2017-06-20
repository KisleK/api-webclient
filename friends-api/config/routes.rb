Rails.application.routes.draw do
  get '/' => 'friends#index'
  get '/friends' => 'friends#index'

  namespace :api do
    namespace :v1 do
      
      get '/friends' => 'friends#index'
      post '/friends' => 'friends#create'
      get '/friends/:id' => 'friends#show'
      patch '/friends/:id' => 'friends#update'
      delete '/friends/:id' => 'friends#destroy'
    end
    namespace :v2 do
      
      get '/friends' => 'friends#index'
      post '/friends' => 'friends#create'
      get '/friends/:id' => 'friends#show'
      patch '/friends/:id' => 'friends#update'
      delete '/friends/:id' => 'friends#destroy'
    end
  end
end

