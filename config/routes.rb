Rails.application.routes.draw do
  get    '/'  => 'ideas#index'
  # get    '/ideas/new'  => 'ideas#new'
  # get    '/ideas/random'  => 'ideas#show'
  # post   '/ideas'  => 'ideas#create'
  # get    '/ideas/:id/edit'  => 'ideas#edit'
  # put    '/ideas/:id'  => 'ideas#update'
  # delete '/ideas/:id'  => 'ideas#destroy'
  resources :ideas
end
