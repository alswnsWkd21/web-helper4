Rails.application.routes.draw do
  resources :messages
  devise_for :users
  get 'comments/create'

  get 'comments/delete'

  get 'helper/index'

  resources :projects
  root "projects#index"
  get "projects/index"
  get "projects/new" => "projects#new"
  get "projects/show/:project_id" => "projects#set_project"
  
  post "projects/show/:project_id/comments/create" => "comments#create"
  post "projects/show/:project_id/comments/delete/:comment_id" => "comments#delete"
end
