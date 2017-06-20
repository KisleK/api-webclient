Rails.application.routes.draw do
  get '/' => 'employees#index'
  get '/employees' => 'employees#index'
  post '/employees' => 'employees#index'

  get '/employees/new' => 'employees#new'
  get '/employees/:id' => 'employees#show'
end
