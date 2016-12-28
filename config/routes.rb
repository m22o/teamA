Rails.application.routes.draw do
  get 'comments/new'
  get '/restaurants/new' => 'restaurant#new'
  root 'restaurant#top'
  post '/restaurants' => 'restaurant#create'
  get '/restaurants' => 'restaurant#index'
  get '/restaurants/:id' => 'restaurant#show', as: 'restaurant'
  get '/restaurants/:id/edit' => 'restaurant#edit', as: 'edit_restaurant'
  patch '/restaurants/:id' => 'restaurant#update', as: 'update_restaurant'
  delete 'restaurants/:id' => 'restaurant#destroy', as: 'destroy_restaurant'


end
