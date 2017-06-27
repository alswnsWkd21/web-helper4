Rails.application.routes.draw do
  devise_for :models
  resources :projects
  root "projects#index"
  get "projects/index"
  get "projects/new" => "projects#new"
  get "projects/show" => "projects#show"
end
