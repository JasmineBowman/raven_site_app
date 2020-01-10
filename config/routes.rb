Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    get "/users" => "users#index"
    get "/users" => "users#show"
    post "/users" => "users#create"
    patch "/users" => "users#update"

    post "/sessions" => "sessions#create"
  end
end
