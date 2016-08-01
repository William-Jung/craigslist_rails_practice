Rails.application.routes.draw do

  root 'categories#index'

  resources :categories do
    resources :articles
  end

  # get '/categories' => 'categories#index'

  # post '/categories' => 'categories#create'

  # patch '/categories/:id' => 'categories#update'

  # delete '/categories/:id' => 'categories#destroy'

  # get '/categories/new' => 'categories#new'

  # get '/categories/:id' => 'categories#show'

  # get '/categories/:id/edit' => 'categories#edit', as: :edit_category

end
