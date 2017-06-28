Rails.application.routes.draw do
  resources :profiles
  get 'posts/index'

  resources :messages
  devise_for :users
  get 'comments/create'

  get 'comments/delete'

  get 'helper/index'

  resources :projects
  # root "projects#index"
  get "projects/index"
  post "/projects/new" => "projects#new"
  get "projects/show/:project_id" => "projects#set_project"
  
  post "projects/show/:project_id/comments/create" => "comments#create"
  post "projects/show/:project_id/comments/delete/:comment_id" => "comments#delete"
  
  
  post '/searches/search' => 'searches#search'     
  
  Rails.application.routes.draw do
  resources :profiles
    root "posts#index"
  end
end
