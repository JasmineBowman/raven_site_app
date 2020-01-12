Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users" => "users#update"

    get "/organizations" => "organizations#index"
    get "/organizations/:id" => "organizations#show"
    post "/organizations" => "organizations#create"
    patch "/organizations" => "organizations#update"

    post "/sessions" => "sessions#create"
  end
end
