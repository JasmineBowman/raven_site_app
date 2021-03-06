Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"

    get "/organizations" => "organizations#index"
    get "/organizations/:id" => "organizations#show"

    post "/sessions" => "sessions#create"

    post "/applications" => "applications#create"

    get "/agreementforms/new" => "agreementforms#new"
    get "/experienceforms/new" => "experienceforms#new"
    get "/feedbackforms/new" => "feedbackforms#new"
  end
end
