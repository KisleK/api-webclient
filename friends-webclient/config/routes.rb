Rails.application.routes.draw do
  get '/' => 'friends#index'
  get '/friends' => 'friends#index'

  get '/friends/new' => 'friends#new'
  post '/friends' => 'friends#create'

  get '/friends/:id' => 'friends#show'
  get '/friends/:id/edit' => 'friends#edit'

  patch '/friends/:id' => 'friends#update'
  delete '/friends/:id' => 'friends#destroy'
end






